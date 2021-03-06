FROM node:6.3

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install -g babel babel-runtime babel-register mocha nodemon
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 1234
CMD [ "npm", "start" ]
