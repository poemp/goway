package md

import (
	"fmt"
	"hash/crc64"
	"io/ioutil"
)

// 生成md5的验证码
func Md5Has(path string) string {

	bytes, err := ioutil.ReadFile(path)
	if err != nil {
		fmt.Println("Open Error For Path:"+path, err)
		return ""
	}

	//先创建一个table
	table := crc64.MakeTable(crc64.ECMA)
	//传入字节切片和table，返回一个uint64
	return fmt.Sprintf("%x", crc64.Checksum(bytes, table))
}
