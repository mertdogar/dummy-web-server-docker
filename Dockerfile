FROM mhart/alpine-node:4.3
MAINTAINER Mert Dogar <mertdogar@gmail.com>

WORKDIR /src
ADD webserver .

# If you have native dependencies, you'll need extra tools
# RUN apk add --no-cache make gcc g++

# If you need npm, don't use a base tag
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]



