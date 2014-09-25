FROM ubuntu:14.04

RUN apt-get update && apt-get install -y curl # libcurl3 libcurl3-dev php5-curl

RUN curl -L https://bootstrap.saltstack.com -o /tmp/install_salt.sh
RUN sh /tmp/install_salt.sh -X || true

VOLUME /srv/salt
VOLUME /srv/pillar

COPY minion /etc/salt/minion
RUN service salt-minion start
