# pull official base image
FROM node:10 AS build

# set working directory
WORKDIR /home/kramoguh/MyProjects/ReactCourse/videos

# add `/app/node_modules/.bin` to $PATH
ENV PATH /home/kramoguh/MyProjects/ReactCourse/videos/node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

# add app
COPY . ./

# start app
CMD ["npm", "start"]
