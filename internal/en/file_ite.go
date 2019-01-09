package en

import "os"

//获取到的文件实体信息
type FileInfo struct {
	File    os.FileInfo
	AbsPath string
	Name    string
	Code    string
}
