FROM node:14
RUN curl https://cli-assets.heroku.com/install.sh | sh

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install http-server --save-dev

COPY . /usr/src/app/

CMD ["npm", "start"]
