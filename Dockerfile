FROM node:12-alpine

COPY . /src
RUN cd /src && npm install
EXPOSE 80
CMD ["node", "/src/server.js"]
