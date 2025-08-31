FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV ANSIBLE_LIBRARY=/usr/local/lib/python3.10/dist-packages/pycw7_ansible/ansible/library

RUN apt-get update && apt-get install -y \
    ansible \
    python3 \
    python3-pip \
    net-tools \
    openssh-server \
    supervisor \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install textfsm==1.1.0 \
                 scp==0.15.0 \
                 paramiko==3.4.0 \
                 ncclient==0.6.15 \
                 lxml==5.2.2 \
                 ipaddr==2.2.0 \
                 future==1.0.0 \
                 PyNaCl==1.5.0 \
                 bcrypt==4.1.3 \
                 cffi==1.17.0rc1 \
                 pycparser==2.22 \
                 pycw7-ansible==1.0.0

RUN mkdir -p /var/log/supervisor /etc/supervisor/conf.d
COPY ./docker/supervisord.conf /etc/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisord.conf"]
