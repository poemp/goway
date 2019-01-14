# goway
flyway to go


自动管理 change sql

#使用
使用 go 命令， 下载当前的源码

`````
go get github.com/poemp/goway
`````
这样就好了， 可以使用了

# 配置
需要参数配置

1. host         数据库ip  
1. port         数据库ip
1. user         数据库登陆用户
1. password     数据库密码
1. dbName       数据库名
1. searchPath   数据库
1. table        sql 版本记录表名
1. path         sql 存放地址

`````
type WayConfigure struct {
	Host       string
	Port       string
	User       string
	Password   string
	DbName     string
	SearchPath string
	Table      string
	Path       string
}

`````

#使用方法
首先需要做配置， 请在启动的时候重写
``````
inter.DefaultTableDataSource = func() inter.WayConfigure {
		return inter.WayConfigure{
			Host:       host,
			Port:       port,
			User:       user,
			Password:   password,
			DbName:     dbName,
			SearchPath: searchPath,
			Table:      table,
			Path:       path,
		}
	}

``````

然后， 调用手动执行
```````
way.Flyway{}.Execu()
```````

# 最后的是
``````
import (
	"fmt"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/postgres"
	"github.com/poemp/goway/inter"
	"github.com/poemp/goway/way"
)

const (
	host       = "127.0.0.1"
	port       = "5432"
	user       = "postgres"
	password   = "123456"
	dbName     = "vs_voice"
	searchPath = "public"
	table      = "schema_history"
	path       = "sql"
)


func init() {
	inter.DefaultTableDataSource = func() inter.WayConfigure {
		return inter.WayConfigure{
			Host:       host,
			Port:       port,
			User:       user,
			Password:   password,
			DbName:     dbName,
			SearchPath: searchPath,
			Table:      table,
			Path:       path,
		}
	}

	way.Flyway{}.Execu()
	MigrateDB()
}

``````

这样就可以了， 最后， 可以在csdn上查看
`````
https://blog.csdn.net/poem_2010/article/details/86241999
`````

# 修改记录
1. 修改记录:2019-01-14 23:15:10  加上事物   当sql文件中sql执行失败之后, 增加记录, 并且会回滚执行, 并且系统会停止启动;
