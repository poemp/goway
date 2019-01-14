package db

import (
	"fmt"
	"github.com/go-xorm/core"
	"github.com/go-xorm/xorm"
	"github.com/lunny/log"
	"github.com/poemp/goway/inter"
	"github.com/poemp/goway/internal"
)

// 获取数据库连接
func GetWayBD() *xorm.Engine {

	defer func() {
		if e := recover(); e != nil {
			fmt.Println(fmt.Sprintf("recover from a fatal error : %v", e))
		}
	}()
	c := inter.DefaultTableDataSource()
	source := fmt.Sprintf("host=%s port=%s user=%s dbname=%s sslmode=%s password=%s",
		c.Host, c.Port, c.User, c.DbName, "disable", c.Password)
	db, err := xorm.NewEngine("postgres", source)
	db.ShowSQL(true)
	db.ShowExecTime(true)
	db.SetDisableGlobalCache(false)
	db.Logger().SetLevel(core.LOG_DEBUG)

	// 连接一下数据库
	err = db.Ping()

	if err != nil {
		log.Fatal(err)
	}

	if err != nil {
		log.Error(err.Error())
		internal.Exit()
	}
	return db
}
