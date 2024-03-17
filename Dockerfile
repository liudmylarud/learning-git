FROM node:14
RUN curl https://cli-assets.heroku.com/install.sh | sh

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app/

EXPOSE 80 8080 443
CMD ["npm", "start"]
