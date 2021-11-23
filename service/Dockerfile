FROM alpine/helm:3.7.1

# install bash, git
RUN apk update && apk upgrade
RUN apk add --no-cache \
  bash \
  git

COPY /scripts /scripts

WORKDIR /scripts

ENTRYPOINT [""]
CMD ["/scripts/init.sh"]