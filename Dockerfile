FROM node:latest

RUN mkdir -p /home/app

COPY ./app /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

# will execute npm install in /home/app because of WORKDIR
RUN npm install
RUN npm install express

# no need for /home/app/server.js because of WORKDIR
CMD ["node", "server.js"]

