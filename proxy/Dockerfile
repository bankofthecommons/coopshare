FROM node:carbon
RUN git clone https://github.com/chimurai/http-proxy-middleware /apps/http-proxy-middleware
WORKDIR /apps/http-proxy-middleware
RUN npm install
ADD index.js /apps/http-proxy-middleware/examples/connect/
CMD  node examples/connect/index.js
EXPOSE 2000