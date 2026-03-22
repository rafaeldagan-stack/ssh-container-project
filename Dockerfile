FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y openssh-server sudo && \
    mkdir /var/run/sshd

# יצירת משתמש
RUN useradd -m devops && echo "devops:devops" | chpasswd && adduser devops sudo

# הפעלת SSH
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]