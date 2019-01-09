package inter

const (
	host       = "127.0.0.1"
	port       = "5432"
	user       = "postgres"
	password   = "123456"
	dbName     = "vs_wybx"
	searchPath = "public"
	table      = "schema_history"
	path       = "migrations"
)

// 数据连接信息
type Configuration struct {
}

// host
func (Configuration) GetHost() string {
	return host
}

// post
func (Configuration) GetPort() string {
	return port
}

// user
func (Configuration) GetUser() string {
	return user
}

// password
func (Configuration) GetPasswd() string {
	return password
}

// db name
func (Configuration) GetDbName() string {
	return dbName
}
func (Configuration) GetSearchPath() string {
	return searchPath
}

// default table
func (Configuration) GetTableName() string {
	return table
}

// file path
func (Configuration) GetPath() string {
	return path
}
