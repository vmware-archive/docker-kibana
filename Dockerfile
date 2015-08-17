FROM kibana:4.1.1
MAINTAINER Tom Scanlan <tscanlan@vmware.com>


RUN apt-get update
RUN apt-get install -y dnsutils

ADD http://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 /bin/confd
ADD start.sh /start.sh

ENTRYPOINT /start.sh

