FROM centos:7
MAINTAINER Ivan Drondov <idrondov@gmail.com>

RUN rpm -Uvh https://mirrors.ripple.com/ripple-repo-el7.rpm
RUN yum install -y --enablerepo=ripple-stable rippled
RUN ln -s /opt/ripple/bin/rippled /bin/rippled
COPY rippled.cfg /cfg/rippled.cfg

CMD /opt/ripple/bin/rippled -a --start --quorum 1 --conf /cfg/rippled.cfg 
