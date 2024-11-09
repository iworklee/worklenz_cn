FROM node:alpine

WORKDIR /usr/src/app

COPY . /usr/src/app

RUN npm config set registry https://registry.npmmirror.com

#RUN npm install -g @angular/cli --no-optional --verbose

#RUN npm install -g yarn

#设置yarn镜像源
RUN yarn config set registry https://registry.npmmirror.com

RUN yarn global add @angular/cli

RUN npm install

CMD ["npm", "run", "start-docker"]
