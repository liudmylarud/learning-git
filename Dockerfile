FROM node:14
RUN curl https://cli-assets.heroku.com/install.sh | sh
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 80 443
CMD ["node", "app.js"]
