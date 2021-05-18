FROM node:14.17.0
 
WORKDIR /app
 
COPY package.json package.json
COPY package-lock.json package-lock.json
 
RUN npm install

ENV NEW_RELIC_NO_CONFIG_FILE=true
 
COPY . .
 
CMD [ "node", "server.js" ]
