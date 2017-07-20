FROM alpine:3.6

EXPOSE 9312 9306

RUN apk --no-cache add sphinx

VOLUME /data

CMD ["searchd", "--nodetach"]
