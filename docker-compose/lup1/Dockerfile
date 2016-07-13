FROM maven

RUN apt-get update && apt-get -y install \
	git \
        postgresql-client
	
RUN git clone -b docker-compose https://github.com/hauspie/lup1 /srv/lup1

WORKDIR /srv/lup1
COPY config.properties src/main/resources
COPY populate.sql db-scheme
ENTRYPOINT ["./test_init_and_run.sh"]
