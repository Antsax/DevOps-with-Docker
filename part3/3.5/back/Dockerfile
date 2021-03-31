FROM alpine

ENV FRONT_URL=http://localhost:5000
EXPOSE 8000

RUN apk add --no-cache curl git npm && \
    curl -sL https://deb.nodesource.com/setup_10.x && \
    apk add nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker && \
    apk del curl git && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /backend-example-docker
RUN npm install

CMD npm start