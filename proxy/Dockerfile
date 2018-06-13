FROM node:carbon
RUN git clone https://github.com/chimurai/http-proxy-middleware /apps/http-proxy-middleware
WORKDIR /apps/http-proxy-middleware
ADD package.json ./
RUN npm install
CMD  node examples/connect/index.js
EXPOSE 2000