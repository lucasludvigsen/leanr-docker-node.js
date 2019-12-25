FROM node:lts

# Create app directory
WORKDIR /usr/src/app

# Install app depenencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# Where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
