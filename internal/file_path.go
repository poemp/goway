package internal

import (
	"github.com/lunny/log"
	"github.com/poemp/goway/inter"
	"github.com/poemp/goway/internal/en"
	"github.com/poemp/goway/internal/md"
	"io/ioutil"
	"os"
	"path/filepath"
	"sort"
	"strconv"
	"strings"
)

// get all file path
func GetFilePath() []en.FileInfo {

	configuration := inter.DefaultTableDataSource()
	path := configuration.Path

	absp, _ := filepath.Abs(path)

	log.Info("search path:" + absp)

	e, fils := getAllPath(absp)
	if e != nil {
		log.Error(e.Error())
		log.Error("格式错误 ， 请按照：V0.1__initdb.sql 方式命名， 格式分割是双下划线")
		Exit()
		return nil
	}
	sort.Sort(en.FileInfoSlice(fils))
	return fils
}

// this dic all file
func getAllPath(pathname string) (error, []en.FileInfo) {
	rd, _ := ioutil.ReadDir(pathname)
	var files []en.FileInfo
	for _, fi := range rd {
		if fi.IsDir() {
			e, fs := getAllPath(pathname + string(os.PathSeparator) + fi.Name() + string(os.PathSeparator))
			if e != nil {
				return e, nil
			}
			for _, fe := range fs {
				files = append(files, fe)
			}
		} else {
			fname := fi.Name()
			strs := strings.Split(fname, "__")
			v := strings.Replace(strs[0], "V", "", 1)
			// 版本  version v1.9 , v100.232   v2.5
			versions := strings.Split(v, ".")
			bigV, bigE := strconv.ParseFloat(versions[0], 64)
			if bigE != nil {
				log.Error(bigE.Error())
				return bigE, nil
			}
			minV, minE := strconv.ParseFloat(versions[1], 64)
			if minE != nil {
				log.Error(minE.Error())
				return minE, nil
			}
			if strings.HasSuffix(fname, ".sql") {
				files = append(files, en.FileInfo{
					File:        fi,
					AbsPath:     pathname + string(os.PathSeparator) + fi.Name(),
					Name:        fi.Name(),
					Code:        md.Md5Has(pathname + string(os.PathSeparator) + fi.Name()),
					BigVersion:  bigV,
					MiniVersion: minV,
				})
			}
		}
	}
	return nil, files
}
