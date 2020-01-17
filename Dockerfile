FROM ubuntu:16.04
RUN sed -i "s/http:\/\/archive.ubuntu.com/http:\/\/mirrors.ustc.edu.cn/g" /etc/apt/sources.list
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y lib32z1 xinetd python3
RUN useradd -d /home/pwn -u 8888 -m pwn
COPY ./xinetd /etc/xinetd.d/xinetd
COPY ./share /home/pwn/
CMD ["/usr/sbin/xinetd", "-dontfork"]