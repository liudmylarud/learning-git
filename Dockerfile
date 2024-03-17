<<<<<<< HEAD
FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY . .
EXPOSE 8080
=======
FROM node:14
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
CMD ["node", "app.js"]
>>>>>>> 3594c54 (added dockerfile)
