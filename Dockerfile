FROM ubuntu:xenial

# Install apt-mirror and save some space by removing the apt-cache
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y apt-mirror nginx multitail cron && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /root/apt

ADD ./apt/trusty.lst /root/apt/trusty.lst
ADD ./apt/xenial.lst /root/apt/xenial.lst
ADD ./apt/bionic.lst /root/apt/bionic.lst

ADD nginx-ubuntu-mirror.conf etc/nginx/sites-enabled/default
ADD cron-apt-mirror /etc/cron.d/apt-mirror
ADD run.sh /run.sh

# This volume is where the mirrored data will be stored.  
VOLUME /root/apt
VOLUME /var/spool/apt-mirror
EXPOSE 80
CMD /run.sh
