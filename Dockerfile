FROM golang:1.16.0-alpine3.13 as builder

WORKDIR /go/src/app
COPY main.go .
RUN go build -ldflags "-s -w" main.go

CMD ["./main"]  