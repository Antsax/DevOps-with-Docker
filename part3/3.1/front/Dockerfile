FROM ubuntu

ENV API_URL=http://localhost:8000
EXPOSE 5000

RUN apt-get update && apt-get install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && \
    git clone https://github.com/docker-hy/frontend-example-docker && \
    apt-get purge -y --auto-remove curl git && \ 
    rm -rf /var/lib/apt/lists/* 

WORKDIR /frontend-example-docker
RUN npm install

CMD npm start