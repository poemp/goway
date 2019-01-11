package internal

import (
	"github.com/lunny/log"
	"os"
)

func Exit() {
	os.Exit(1)
}

func ExitMsg(message string) {
	log.Error(message)
	Exit()
}
