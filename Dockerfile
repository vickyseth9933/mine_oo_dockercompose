#FROM node:latest
#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app
#COPY package.json /usr/src/app/
#RUN npm install
#COPY . /usr/src/app
#EXPOSE 3000
#CMD [ “npm”, “start” ]


services:
    reverseproxy:
        image: nginx
        ports:
            - 8080:8080
            - 8081:8081
        restart: always