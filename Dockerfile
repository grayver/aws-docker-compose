FROM docker:stable-dind

RUN apk add --no-cache curl git py3-pip openssl bash ca-certificates
RUN apk add --no-cache --virtual build-dependencies python3-dev libffi-dev openssl-dev gcc libc-dev make \
    && pip3 --no-cache-dir install docker-compose awscli ecs-deploy \
    && apk del build-dependencies python3-dev libffi-dev openssl-dev gcc libc-dev make
