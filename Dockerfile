FROM alpine as alpine
FROM tarampampam/curl as curl

FROM erisamoe/cloudflared

COPY --from=curl /bin/curl /bin/
COPY --from=alpine /bin/ash /bin/
