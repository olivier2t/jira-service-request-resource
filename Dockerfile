FROM alpine:3.14.7

RUN apk add --no-cache --update jq bash git curl ca-certificates openssh-client openssl unzip tar

# Install Concourse Resource Scripts
RUN mkdir -p /opt/resource
ADD bin /opt/resource
RUN chmod -R a+x /opt/resource
WORKDIR /opt/resource