FROM docker/whalesay:latest
RUN apt-get -y update && \
	apt-get -y upgrade && \
	apt-get install -y software-properties-common && \ 
	add-apt-repository ppa:webupd8team/java && \
	echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
	echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections && \
	apt-get -y update && \ 
	apt-get install -y oracle-java8-installer && \
	apt-get clean
#CMD /bin/bash
