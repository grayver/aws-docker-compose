FROM docker:stable-dind

RUN apk update && apk add --no-cache curl py-pip openssl bash ca-certificates
RUN pip --no-cache-dir install docker-compose awscli ecs-deploy
