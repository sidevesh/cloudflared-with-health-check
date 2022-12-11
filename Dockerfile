FROM golang:1.9.2 as builder

WORKDIR /go/src/github.com/mietzen/watchtower-with-health-check
COPY healthcheck ./healthcheck

RUN \
  GO111MODULE=on CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o health-check "github.com/mietzen/watchtower-with-health-check/healthcheck"

FROM containrrr/watchtower

COPY --from=builder /go/src/github.com/mietzen/watchtower-with-health-check/health-check ./healthcheck

HEALTHCHECK --interval=1s --timeout=1s --start-period=2s --retries=3 CMD [ "/healthcheck" ]