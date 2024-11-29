# Download base image ubuntu 22.04
FROM ubuntu:latest
# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
# Update Ubuntu Software repository
RUN apt update
RUN apt upgrade -y
RUN apt dist-upgrade -f

RUN apt install git curl sudo python3 -y
RUN rm -rf /var/lib/apt/lists/*
RUN apt clean

# Create test user and add to sudoers
RUN useradd -m -s /bin/bash tester
RUN usermod -aG sudo tester
RUN echo "tester   ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers

# Add dotfiles and chown
ADD . /home/tester/dotfiles
RUN chown -R tester:tester /home/tester

USER tester
ENV HOME /home/tester

WORKDIR /home/tester/dotfiles
# Run run.sh when the container launches
ENTRYPOINT ["/bin/bash", "./run.sh"]