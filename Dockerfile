FROM node:14
RUN curl https://cli-assets.heroku.com/install.sh | sh
WORKDIR /usr/src/app
COPY . .
CMD ["node", "app.js"]
