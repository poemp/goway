package sql

import (
	"encoding/json"
	_ "github.com/jinzhu/gorm/dialects/postgres"
	"github.com/lunny/log"
	db2 "github.com/poemp/goway/internal/db"
	"github.com/poemp/goway/internal/entity"
)

// 获取所有的数据
func GetAllHistoryData() []entity.SchemaHistory {

	db := db2.GetWayBD()
	defer db.Close()

	var historys []entity.SchemaHistory
	err := db.Table(entity.SchemaHistory{}).Find(&historys)
	if err != nil {
		log.Error(err.Error())
	}
	return historys
}

// 创建sql
func ExcuteCreateTable() bool {
	sql := GetTableInitSql()

	db := db2.GetWayBD()
	defer db.Close()

	session := db.NewSession()

	_, err := session.Exec(sql)

	if err == nil {
		session.Commit()
	} else {
		session.Rollback()
	}
	return err != nil
}

// 是否存在
func GetTableExist() bool {
	sql := GetExistSQL()

	db := db2.GetWayBD()
	defer db.Close()

	session := db.NewSession()
	var r []string

	rr, err := session.Exec(sql)

	if err != nil {
		session.Rollback()
		log.Error(err.Error)
	} else {
		session.Commit()
	}
	log.Info(json.Marshal(rr))
	return len(r) > 0
}
