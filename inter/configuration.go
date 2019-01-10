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

// DefaultTableDataSource default table name handler
var DefaultTableDataSource = func() WayConfigure {
	return WayConfigure{
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
