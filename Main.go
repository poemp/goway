package main

import (
	"fmt"
	"github.com/poemp/goway/internal/data"
)

func main() {

	// 表是否存在
	e := data.GetTableExist()
	if !e {
		data.ExcuteCreateTable()
	}

	histotys := data.GetAllHistoryData()
	fmt.Println(histotys)
}
