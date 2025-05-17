FROM alpine:3
RUN apk add --update --no-cache bash ca-certificates curl git jq openssh lastversion
RUN ["bin/sh", "-c", "mkdir -p /src"]
COPY ["src", "/src/"]
ENTRYPOINT ["/src/entrypoint.sh"]