#import base image
FROM node:20-alpine

#create container working directory
WORKDIR /app

#cpy json files for install dependencies
COPY package*.json ./

#install dependencies
RUN npm install

#copy all project files to container worling directory
COPY . .

#port expose
EXPOSE 5173

#command to run application
CMD [ "npm" , "run" , "dev" ]