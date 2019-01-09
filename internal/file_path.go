package internal

import (
	"github.com/lunny/log"
	"github.com/poemp/goway/inter"
	"github.com/poemp/goway/internal/en"
	"github.com/poemp/goway/internal/md"
	"io/ioutil"
	"os"
	"path/filepath"
	"strings"
)

// get all file path
func GetFilePath() []en.FileInfo {

	configuration := inter.Configuration{}
	path := configuration.GetPath()

	absp, _ := filepath.Abs(path)

	log.Info("search path:" + absp + "\n")

	return getAllPath(absp)
}

// this dic all file
func getAllPath(pathname string) []en.FileInfo {
	rd, _ := ioutil.ReadDir(pathname)
	var files []en.FileInfo
	for _, fi := range rd {
		if fi.IsDir() {
			fs := getAllPath(pathname + string(os.PathSeparator) + fi.Name() + string(os.PathSeparator))
			for _, fe := range fs {
				files = append(files, fe)
			}
		} else {
			fname := fi.Name()
			if strings.HasSuffix(fname, ".sql") {
				files = append(files, en.FileInfo{
					File:    fi,
					AbsPath: pathname + string(os.PathSeparator) + fi.Name(),
					Name:    fi.Name(),
					Code:    md.Md5Has(pathname + string(os.PathSeparator) + fi.Name()),
				})
			}
		}
	}
	return files
}
