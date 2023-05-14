set -x  # ECHO on

export GOPROXY=https://goproxy.cn

touch go.sum
go mod tidy

go get

export BUILD_COMMAND='go build -trimpath -ldflags "-s -w -buildid=" -buildvcs=false -o'
#golang 1.20  -buildvcs=false 

export CGO_ENABLED=0 GOOS=linux GOARCH=amd64 ;eval $BUILD_COMMAND repl-$GOOS-$GOARCH
export CGO_ENABLED=0 GOOS=linux GOARCH=arm   ;eval $BUILD_COMMAND repl-$GOOS-$GOARCH
export CGO_ENABLED=0 GOOS=linux GOARCH=arm64 ;eval $BUILD_COMMAND repl-$GOOS-$GOARCH

