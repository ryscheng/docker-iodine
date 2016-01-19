FROM ubuntu:15.04
MAINTAINER ryscheng

EXPOSE 53/udp

RUN apt-get update && apt-get install -y openssh-server net-tools iodine iptables

RUN mkdir -p /root/.ssh
RUN touch /root/.ssh/authorized_keys2

RUN mkdir -p /opt/iodine
ADD ./start.sh /opt/iodine/start.sh

CMD ["sh", "/opt/iodine/start.sh"]
