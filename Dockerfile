FROM tarampampam/curl as curl

FROM erisamoe/cloudflared
COPY --from=curl /bin/curl /bin/
