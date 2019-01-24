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
			v = strings.Replace(v, ".", "", 1)
			f, e := strconv.ParseFloat(v, 64)
			if e != nil {
				return e, nil
			}
			if strings.HasSuffix(fname, ".sql") {
				files = append(files, en.FileInfo{
					File:    fi,
					AbsPath: pathname + string(os.PathSeparator) + fi.Name(),
					Name:    fi.Name(),
					Code:    md.Md5Has(pathname + string(os.PathSeparator) + fi.Name()),
					Version: f,
				})
			}
		}
	}
	return nil, files
}
