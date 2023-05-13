## usage:
```
./repl-linux-aarch64 

gore> :import "fmt"
gore> 
gore> fmt.Println("err")

```



## build: 
```
$ ./build.sh 
++ go get
++ export CGO_ENABLED=0 GOOS=linux GOARCH=arm64
++ CGO_ENABLED=0
++ GOOS=linux
++ GOARCH=arm64
++ go build -trimpath -ldflags '-s -w -buildid=' -o repl-linux-arm64
++ export CGO_ENABLED=0 GOOS=linux GOARCH=amd64
++ CGO_ENABLED=0
++ GOOS=linux
++ GOARCH=amd64
++ go build -trimpath -ldflags '-s -w -buildid=' -o repl-linux-amd64


```

## download:
 https://github.com/qgb/go_repl/releases
