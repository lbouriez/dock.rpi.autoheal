ARG arch=armhf-v3.9
FROM multiarch/alpine:${arch}-v3.8

RUN apk add --no-cache curl jq

COPY docker-entrypoint /
ENTRYPOINT ["/docker-entrypoint"]

HEALTHCHECK --interval=5s CMD exit 0

CMD ["autoheal"]
