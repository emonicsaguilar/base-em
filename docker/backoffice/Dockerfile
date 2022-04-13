FROM node:16.14.2
LABEL maintainer="Alejandro Aguilar <emonics.aguilar@gmail.com>"
RUN mkdir /usr/app/
RUN mkdir /usr/app/backoffice 
WORKDIR /usr/app/backoffice
COPY ./projects/backoffice ./
RUN npm install -g @angular/cli
RUN npm install
ARG configuration=development
RUN ng config -g cli.warnings.versionMismatch false
EXPOSE 4200

CMD ["yarn", "start", "--host", "0.0.0.0"]

