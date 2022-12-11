FROM alpine:3.17.0 as alpine
FROM containrrr/watchtower
COPY --from=alpine /bin/true /
HEALTHCHECK --interval=30s --timeout=3s CMD /bin/true