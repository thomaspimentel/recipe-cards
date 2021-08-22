FROM node:14

ENV APP_HOME /usr/src/app

WORKDIR ${APP_HOME}
COPY ./ ${APP_HOME}
RUN apt-get update && apt-get upgrade -y
RUN npm i -g eslint
RUN npm install
CMD ["npm", "start"]
