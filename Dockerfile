FROM tarampampam/curl as curl-image

FROM erisamoe/cloudflared

COPY --from=curl-image /bin/curl /bin/
