package sql

import (
	_ "github.com/jinzhu/gorm/dialects/postgres"
	"github.com/lunny/log"
	db2 "github.com/poemp/goway/internal/db"
	"github.com/poemp/goway/internal/entity"
)

// 获取所有的数据
func GetAllHistoryData() []entity.SchemaHistory {
	sql := GetSelectSQL()

	db := db2.GetWayBD()
	defer db.Close()

	var historys []entity.SchemaHistory
	err := db.Raw(sql).Find(&historys)
	if err.Error != nil {
		log.Error(err.Error)
	}
	return historys
}

// 创建sql
func ExcuteCreateTable() bool {
	sql := GetTableInitSql()

	db := db2.GetWayBD()
	defer db.Close()

	err := db.Exec(sql)
	return err != nil
}

// 是否存在
func GetTableExist() bool {
	sql := GetExistSQL()

	db := db2.GetWayBD()
	defer db.Close()

	var r []string

	err := db.Raw(sql).Find(&r)

	if err.Error != nil {
		log.Error(err.Error)
	}
	return len(r) > 0
}
