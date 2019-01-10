package way

import (
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
			if !historyInfoEq(e, historys[i]) {
				log.Error(info.Name + " not equals : " + historys[i].Script)
				log.Error("\n Dear. You can't edit this file [" + info.Name + "]\n We will check if there are any changes.\n It's will causes system startup failure.")
				internal.Exit()
			}
		} else {
			e.Success = FlywaySqlFile(info)
			insertRecored(e)
		}

	}
}

// 利用反射获取到数据
func getValue(e entity.SchemaHistory) []interface{} {

	var ins []interface{}
	t := reflect.ValueOf(e)
	for i := 0; i < t.NumField(); i++ {
		v := t.Field(i)
		ins = append(ins, v.Interface())
	}
	return ins
}

// 执行插入记录
func insertRecored(e entity.SchemaHistory) {
	db := db2.GetWayBD()
	defer db.Close()

	insertSql := sql.GetInsertIntoSql()
	values := getValue(e)
	db.Exec(insertSql, values)
}

// 执行sql
// 返回是否执行成功
func FlywaySqlFile(info en.FileInfo) bool {

	db := db2.GetWayBD()
	defer db.Close()

	byt, e := ioutil.ReadFile(info.AbsPath)
	if e != nil {
		log.Error(e.Error())
		return false
	}
	sqls := string(byt)

	return db.Exec(sqls).Error == nil
}
