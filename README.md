## usage:
`go` command must in PATH ! Otherwise:
```
root@57bda0941f68:/home/qgb/go/go_repl# mv /usr/local/go/bin/go /usr/local/go/bin/go0

root@57bda0941f68:/home/qgb/go/go_repl# dlv debug repl.go
exec: "go": executable file not found in $PATH

root@57bda0941f68:/home/qgb/go/go_repl# ./repl-linux-amd64
1
================   2
gore: could not load 'fmt' package: err: go resolves to executable in current directory (./go): stderr: 


# go in PATH :

./repl-linux-amd64

gore> :import "fmt"
gore> 
gore> fmt.Println("err")

```



## build: 
```
$ ./build.sh 
++ export GOPROXY=https://goproxy.cn
++ GOPROXY=https://goproxy.cn
++ touch go.sum
++ go mod tidy
++ go get
++ export 'BUILD_COMMAND=go build -trimpath -ldflags "-s -w -buildid=" -buildvcs=false -o'
++ BUILD_COMMAND='go build -trimpath -ldflags "-s -w -buildid=" -buildvcs=false -o'
++ export CGO_ENABLED=0 GOOS=linux GOARCH=amd64
++ CGO_ENABLED=0
++ GOOS=linux
++ GOARCH=amd64
++ eval go build -trimpath -ldflags '"-s' -w '-buildid="' -buildvcs=false -o repl-linux-amd64
+++ go build -trimpath -ldflags '-s -w -buildid=' -buildvcs=false -o repl-linux-amd64
	......
```

## download:
 https://github.com/qgb/go_repl/releases
