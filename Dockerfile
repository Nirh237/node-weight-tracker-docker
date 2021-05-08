#base image nope alpine
FROM node:15-alpine
WORKDIR /app
COPY package*.json ./
#copy app and dependencies
RUN npm install
COPY . .

#app port
EXPOSE 8080
CMD npm run initdb && npm run dev



