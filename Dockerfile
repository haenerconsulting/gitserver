FROM alpine:3.7

ENV PACKAGES "git openssh-client gnupg bash"

RUN apk add --update $PACKAGES && rm -rf /var/cache/apk/*

RUN mkdir -p /root/.ssh

RUN git config --global user.email "git@haenerconsulting.com" && \
    git config --global user.name "git bot"
