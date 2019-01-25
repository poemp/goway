package en

import "os"

//获取到的文件实体信息
type FileInfo struct {
	File        os.FileInfo
	AbsPath     string
	Name        string
	Code        string
	BigVersion  float64
	MiniVersion float64
}

// 按照 Person.Age 从大到小排序
type FileInfoSlice []FileInfo

// 重写 Len() 方法
func (a FileInfoSlice) Len() int {
	return len(a)
}

// 重写 Swap() 方法
func (a FileInfoSlice) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

// 重写 Less() 方法， 从大到小排序
func (a FileInfoSlice) Less(i, j int) bool {
	if a[i].BigVersion == a[j].BigVersion {
		return a[i].MiniVersion < a[j].MiniVersion
	}
	return a[i].BigVersion < a[j].BigVersion

}
