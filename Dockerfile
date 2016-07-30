FROM quay.io/aptible/nodejs:v0.12.x

# Required to build libxmljs, a dependency of hubot-wolfram
RUN apt-install python build-essential

# Add package.json before rest of repo, for Docker caching purposes
# See http://ilikestuffblog.com/2014/01/06/
ADD package.json /app/
WORKDIR /app
RUN npm install --production

ADD . /app
