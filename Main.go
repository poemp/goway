package main

import (
	"github.com/poemp/goway/way"
	"regexp"
)

func main() {

	e := way.Flyway{}
	e.Execu()

	reg := regexp.MustCompile(`V(\d)+(\.\d+)?__[A-Za-z0-9\-_]+(.sql)$`)
	println(reg.Match([]byte("V1.123__init-data.sql")))
}
