FROM debian:jessie

RUN DEBIANFRONTEND=noninteractive apt-get -qq update

RUN ln -sf /usr/share/zoneinfo/Asia/Taipei /etc/localtime

ADD build.sh /build.sh
ADD run.sh /run.sh
ADD nfsen.conf /nfsen.conf
ADD gen_conf.php /gen_conf.php
RUN chmod +x /run.sh /build.sh ; sync ; sleep 1; /build.sh

WORKDIR /

ENTRYPOINT ["/run.sh"]
