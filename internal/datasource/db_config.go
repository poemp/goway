package datasource

import (
	"fmt"
	"github.com/jinzhu/gorm"
	"github.com/lunny/log"
	"github.com/poemp/goway/inter"
)

// 获取数据库连接
func GetBD() *gorm.DB {
	c := inter.Configuration{}
	source := fmt.Sprintf("host=%s port=%s user=%s dbname=%s sslmode=%s password=%s",
		c.GetHost(), c.GetPort(), c.GetUser(), c.GetDbName(), "disable", c.GetPasswd())
	defer func() {
		if e := recover(); e != nil {
			fmt.Println(fmt.Sprintf("recover from a fatal error : %v", e))
		}
	}()
	log.Info("datasource :" + source)
	db, err := gorm.Open("postgres", source)
	db.SingularTable(true)
	db.LogMode(true)
	if err != nil {
		panic(err)
	}
	return db
}
