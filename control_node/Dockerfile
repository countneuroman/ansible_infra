FROM ubuntu:jammy

RUN apt update

# Install ansible
RUN apt install -y python3 python3-pip ssh curl
RUN pip3 install ansible argcomplete

CMD ["sleep", "infinity"]