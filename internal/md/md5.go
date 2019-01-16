package md

import (
	"crypto/md5"
	"fmt"
	"io"
	"os"
)

// 生成md5的验证码
func Md5Has(path string) string {
	f, err := os.Open(path)
	if err != nil {
		fmt.Println("Open", err)
		return ""
	}

	defer f.Close()

	md5hash := md5.New()
	if _, err := io.Copy(md5hash, f); err != nil {
		fmt.Println("Copy", err)
		return ""
	}

	return fmt.Sprintf("%x", md5hash.Sum(nil))
}
