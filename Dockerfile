ARG MONGO_VERSION="latest"

FROM mongo:${MONGO_VERSION}

RUN echo "rs.initiate();" > /docker-entrypoint-initdb.d/replica-init.js

CMD ["--replSet" , "test"]