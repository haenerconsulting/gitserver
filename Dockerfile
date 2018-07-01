FROM alpine:latest

EXPOSE 80

VOLUME ["/git", "/var"]

RUN apk add --no-cache \
  lighttpd \
  lighttpd-mod_auth 

COPY conf/* /etc/lighttpd/

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
