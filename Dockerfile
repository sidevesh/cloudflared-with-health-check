FROM containrrr/watchtower as watchtower
FROM alpine:3.17.0

RUN apk add --no-cache \
    ca-certificates \
    tzdata

LABEL "com.centurylinklabs.watchtower"="true"
EXPOSE 8080

COPY --from=watchtower /watchtower /

ENTRYPOINT ["/watchtower"]
HEALTHCHECK CMD /bin/true