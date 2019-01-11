package db

import (
	"fmt"
	"github.com/jinzhu/gorm"
	"github.com/lunny/log"
	"github.com/poemp/goway/inter"
	"github.com/poemp/goway/internal"
)

// 获取数据库连接
func GetWayBD() *gorm.DB {

	defer func() {
		if e := recover(); e != nil {
			fmt.Println(fmt.Sprintf("recover from a fatal error : %v", e))
		}
	}()
	c := inter.DefaultTableDataSource()
	source := fmt.Sprintf("host=%s port=%s user=%s dbname=%s sslmode=%s password=%s",
		c.Host, c.Port, c.User, c.DbName, "disable", c.Password)
	db, err := gorm.Open("postgres", source)
	db.SingularTable(true)
	db.LogMode(false)
	if err != nil {
		log.Error(err.Error())
		internal.Exit()
	}
	return db
}
