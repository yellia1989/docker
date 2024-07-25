FROM ubuntu:20.04

RUN apt update
RUN apt install -y python2 wget curl vim lsof
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python2 get-pip.py
RUN apt install -y libmysqlclient-dev gcc python-dev
RUN wget https://raw.githubusercontent.com/paulfitz/mysql-connector-c/master/include/my_config.h -O /usr/include/mysql/my_config.h
RUN pip2 install mysql-python
RUN apt install -y net-tools openssh-server
RUN service ssh start
RUN mkdir /root/.ssh
RUN touch /root/.ssh/authorized_keys


EXPOSE 22