FROM golang:1.8-alpine
ADD . /go/src/cvpage-app
RUN go install cvpage-app

FROM alpine:latest
COPY --from=0 /go/bin/cvpage-app .
CMD ["./cvpage-app"]
