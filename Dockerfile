FROM docker:stable-dind

RUN apk add --no-cache curl py-pip openssl bash ca-certificates
RUN apk add --no-cache --virtual build-dependencies gcc libc-dev make \
    && pip --no-cache-dir install docker-compose awscli ecs-deploy \
    && apk del build-dependencies gcc libc-dev make
