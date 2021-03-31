FROM alpine

ENV API_URL=http://localhost:8000
EXPOSE 5000

RUN apk add --no-cache curl git npm && \
    curl -sL https://deb.nodesource.com/setup_10.x && \
    apk add nodejs && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    apk del curl git && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /frontend-example-docker
RUN npm install

CMD npm start