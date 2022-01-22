FROM ubuntu:latest
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive \
    apt-get -y install sudo && \
	apt-get -y install maven && \
	useradd -m user && echo "user:user" | chpasswd && adduser user sudo && \
	apt-get -y install git-all
	
RUN git clone https://mathivananR@bitbucket.org/mathivananr/mathi.git
CMD ["/bin/sleep", "3650d"]
USER root
