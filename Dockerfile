FROM node:15-alpine

COPY . /
RUN cd /src && npm install
EXPOSE 80
CMD ["node", "/src/server.js"]
