FROM node:14-alpine as build-stage

ENV API_URL=http://localhost:8000
EXPOSE 5000

RUN apk add --no-cache curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    apk del curl git && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /frontend-example-docker
RUN npm install

FROM node:14-alpine

COPY --from=build-stage /frontend-example-docker /frontend-example-docker

WORKDIR /frontend-example-docker

CMD npm start