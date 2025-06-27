FROM postgres:13
COPY dryCleaning.sql /tmp/sql/
RUN [ "cp", "/tmp/sql/dryCleaning.sql", "/docker-entrypoint-initdb.d/" ]