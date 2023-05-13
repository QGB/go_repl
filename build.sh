set -x  # ECHO on
#go get github.com/google/shlex github.com/gliderlabs/ssh
export GOPROXY=https://goproxy.cn

touch go.sum
go mod tidy

go get
export CGO_ENABLED=0 GOOS=linux GOARCH=arm64 ;go build -trimpath -ldflags "-s -w -buildid=" -o repl-${GOOS}-$GOARCH
export CGO_ENABLED=0 GOOS=linux GOARCH=arm   ;go build -trimpath -ldflags "-s -w -buildid=" -o repl-${GOOS}-$GOARCH
export CGO_ENABLED=0 GOOS=linux GOARCH=amd64 ;go build -trimpath -ldflags "-s -w -buildid=" -o repl-${GOOS}-$GOARCH
