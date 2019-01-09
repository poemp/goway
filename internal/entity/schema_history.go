package entity

import (
	"reflect"
	"time"
)

// 需要保存的数据的表映射
type SchemaHistory struct {
	Id            int64
	Version       string
	Description   string
	Types         string
	Script        string
	CheckSum      string
	InstalledOn   time.Time
	InstalledTime time.Time
	Success       bool
}

//数据列保存
type FieldType struct {
	TableColumn string       // 对应的表列名字
	FieldName   string       // 对应的原始名字
	Kind        reflect.Kind //对应的数据的类型 string int64 time.Time
}
