FROM ubuntu:16.04
MAINTAINER xiaoyulei
RUN apt-get update && apt-get dist-upgrade -y && \
apt-get install -y openssh-server cmake gcc g++ autoconf automake
CMD ["/usr/sbin/init"]
