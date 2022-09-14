FROM postgres:11


# Install the wal2json plugin.
RUN apt-get update -y
RUN apt-get install -y git build-essential postgresql-server-dev-11
RUN git clone https://github.com/eulerto/wal2json.git --branch wal2json_2_4 --single-branch /wal2json
WORKDIR /wal2json
RUN USE_PGXS=1 make && make install