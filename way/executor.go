package way

import (
	"encoding/json"
	"fmt"
	"github.com/lunny/log"
	"github.com/poemp/goway/internal"
	db2 "github.com/poemp/goway/internal/db"
	"github.com/poemp/goway/internal/en"
	"github.com/poemp/goway/internal/entity"
	"github.com/poemp/goway/internal/sql"
	"github.com/zheng-ji/goSnowFlake"
	"io/ioutil"
	"reflect"
	"regexp"
	"strconv"
	"strings"
	"time"
)

type Flyway struct {
}

func genId() int64 {
	iw, err := goSnowFlake.NewIdWorker(1)
	if err != nil {
		fmt.Println(err)
	}
	id, err := iw.NextId()
	return id
}

// 执行
func (Flyway) Execu() {
	// 表是否存在
	e := sql.GetTableExist()
	if !e {
		sql.ExcuteCreateTable()
	}

	histotys := sql.GetAllHistoryData()
	fileInfos := internal.GetFilePath()
	validateFile(fileInfos)
	validateRecords(fileInfos, histotys)
}

//验证文件命名
func validateFile(infos []en.FileInfo) {
	reg := regexp.MustCompile(`V(\d)+(\.\d+)?__[A-Za-z0-9\-_]+(.sql)$`)
	for _, i := range infos {
		if !reg.Match([]byte(i.Name)) {
			panic("" + i.Name + " 格式不正确 example: V1.1__init-data.sql")
			internal.Exit()
		}
	}
}

// 把记录转化成数据库记录
func convertToRecord(i en.FileInfo) entity.SchemaHistory {
	name := i.Name
	strs := strings.Split(name, "__")
	h := entity.SchemaHistory{
		Id:          genId(),
		Version:     strings.Replace(strs[0], "V", "", 1),
		Description: strs[1],
		Types:       "SQL",
		Script:      name,
		CheckSum:    i.Code,
		InstalledOn: time.Now(),
		Success:     false,
	}

	return h
}

// 是否相同
func historyInfoEq(i entity.SchemaHistory, o entity.SchemaHistory) bool {
	if i == o {
		return true
	} else {
		return strings.EqualFold(i.CheckSum, o.CheckSum) && strings.EqualFold(i.Script, o.Script) && strings.EqualFold(i.Version, o.Version) && strings.EqualFold(i.Description, o.Description)
	}
}

// 验证文件和记录的比较
func validateRecords(fileInfos []en.FileInfo, historys []entity.SchemaHistory) {
	if len(fileInfos) < len(historys) {
		panic(" Cannot delete original data")
	}
	for i, info := range fileInfos {
		e := convertToRecord(info)
		// 文件比记录要多
		if i < len(historys) {
			if !historys[i].Success {
				log.Error(historys[i].Script + " " + formatTime(historys[i].InstalledOn) + " is Fail")
				internal.Exit()
			}
			if !historyInfoEq(e, historys[i]) {
				b, _ := json.Marshal(e)
				bb, _ := json.Marshal(historys[i])
				log.Error("\n" + string(b) + " \t\t\t not equals :\n \t\t\t" + string(bb))
				log.Error("\n Dear. You can't edit this file [" + info.Name + "]\n We will check if there are any changes.\n It's will causes system startup failure.")
				internal.Exit()
			}
		} else {
			s, m := FlywaySqlFile(info, e)
			if !s {
				log.Error(info.Name + " execute ERROR")
				log.Error(m)
				internal.Exit()
			}
		}

	}
}

// 格式化显示数字
func formatInt64(i int64) string {
	return strconv.FormatInt(i, 10)
}

// 格式显示时间
func formatTime(time time.Time) string {
	return time.Format("2006-01-02 15:04:05")
}

// 格式显示时间
func formatTimePoint(time *time.Time) string {
	return time.Format("2006-01-02 15:04:05")
}

// 利用反射获取到数据
func getValue(e entity.SchemaHistory) []string {

	var ins []string
	t := reflect.ValueOf(e)
	for i := 0; i < t.NumField(); i++ {
		v := t.Field(i)
		kind := v.Kind()
		switch kind {
		case reflect.Int:
			ins = append(ins, formatInt64(v.Int()))
			break
		case reflect.Int64:
			ins = append(ins, formatInt64(v.Int()))
			break
		case reflect.Int8:
			ins = append(ins, formatInt64(v.Int()))
			break
		case reflect.Int16:
			ins = append(ins, formatInt64(v.Int()))
			break
		case reflect.Int32:
			ins = append(ins, formatInt64(v.Int()))
			break
		case reflect.String:
			ins = append(ins, v.String())
			break
		case reflect.Bool:
			ins = append(ins, strconv.FormatBool(v.Bool()))
			break
		case reflect.Struct:
			{
				p, ok := v.Interface().(time.Time)
				if ok {
					ins = append(ins, formatTime(p))
				}
			}
		}
	}
	return ins
}

// 执行sql
// 返回是否执行成功
func FlywaySqlFile(info en.FileInfo, entity entity.SchemaHistory) (bool, error) {

	db := db2.GetWayBD()
	defer db.Close()

	// 开启事物管理
	session := db.NewSession()
	_ = session.Begin()

	byt, e := ioutil.ReadFile(info.AbsPath)
	if e != nil {
		log.Error(e.Error())
		_ = session.Rollback()
		return false, e
	}
	sqls := string(byt)

	r, eesql := session.Exec(sqls)
	if eesql != nil {
		_ = session.Rollback()
		log.Error(eesql.Error())
		log.Error("rollback this commit")
	}
	_ = session.Commit()

	/////////////////////
	// 开启事物
	_ = session.Begin()
	log.Info(r)
	entity.Success = eesql == nil
	// 放到同一个事物里面管理
	insertSql := sql.GetInsertIntoSql(getValue(entity))
	result, ee := session.Exec(insertSql)
	if ee == nil {
		_ = session.Commit()
	} else {
		_ = session.Rollback()
		log.Error(ee.Error())
		return false, ee
	}
	log.Info(json.Marshal(result))

	// 提交事物
	if ee == nil {
		_ = session.Commit()
	}
	return ee == nil && eesql == nil, nil
}
