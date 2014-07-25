FROM quay.io/aptible/nodejs:v0.10.x

ADD . /opt/nodejs
WORKDIR /opt/nodejs
RUN npm install

ENV PORT 3000
EXPOSE 3000
