FROM node:14-alpine as build-stage

ENV FRONT_URL=http://localhost:5000
EXPOSE 8000

RUN apk add --no-cache curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    apk del curl git && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /backend-example-docker
RUN npm install 

FROM node:14-alpine

COPY --from=build-stage /backend-example-docker /backend-example-docker

WORKDIR /backend-example-docker

CMD npm start