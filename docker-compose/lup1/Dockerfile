FROM maven

RUN apt-get update && apt-get -y install \
	git
	
RUN git clone https://github.com/hauspie/lup1 /srv/lup1

WORKDIR /srv/lup1

ENTRYPOINT ["mvn", "jetty:run"]
