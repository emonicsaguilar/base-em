FROM node:16.14.2
LABEL maintainer="Alejandro Aguilar <emonics.aguilar@gmail.com>"
ENV TZ ${TZ}
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR /usr/app/webapp
COPY ./projects/webapp ./
RUN yarn && yarn build

EXPOSE 3000

CMD ["yarn", "start"]
