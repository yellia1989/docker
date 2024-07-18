FROM centos:7.9.2009

RUN cd /etc/yum.repos.d && mkdir backup && mv *.repo backup
COPY CentOS-aliyun-lhr.repo /etc/yum.repos.d/
COPY epel-aliyun.repo /etc/yum.repos.d/
RUN yum clean all && yum makecache fast
RUN yum install -y openssh-server net-tools lsof openssh-clients

RUN ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key -N ""
RUN ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key -N ""
RUN ssh-keygen -t ed25519 -f /etc/ssh/ssh_host_ed25519_key -N ""
RUN /usr/sbin/sshd

EXPOSE 22