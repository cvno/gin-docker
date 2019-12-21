FROM golang:1.13-stretch as builder
ENV CGO_ENABLED=0 GOOS=linux
ENV GOPROXY "https://goproxy.cn,direct"

COPY . /go/src/
WORKDIR /go/src/

RUN set -x \
    && CGO_ENABLED=0 GOOS=linux go build -ldflags="-s -w" -installsuffix cgo -o app main.go \
    && chmod 755 app

FROM alpine

COPY --from=builder /go/src/app /web/app

RUN chmod 755 /web/app

EXPOSE 6006
CMD ["/web/app"]
