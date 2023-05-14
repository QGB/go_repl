package main

import (
	"os"
	"github.com/x-motemen/gore/cli"
	"fmt"
)

func main() {
	fmt.Printf("%#v\n================   %#v\n",1,2)
	os.Exit(cli.Run())
}
