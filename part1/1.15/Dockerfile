FROM ubuntu

EXPOSE 3000

RUN apt-get update && apt-get install -y git libpq-dev curl python3 python3-pip 
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN git clone https://github.com/Anssikka/TKT-STAR

WORKDIR /TKT-STAR/frontend
RUN npm install

WORKDIR /TKT-STAR
RUN pip3 install -r requirements.txt

WORKDIR /TKT-STAR/frontend
CMD npm start