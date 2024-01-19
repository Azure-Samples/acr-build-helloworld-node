FROM node:15-alpine

COPY . /fts
RUN cd /fts && npm install
EXPOSE 80
CMD ["node", "/fts/server.js"]
