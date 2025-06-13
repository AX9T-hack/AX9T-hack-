FROM node:lts-buster
RUN git clone https://github.com/AX9T-hack/AX9T-hack👾🤖/root/AX9T-hack
WORKDIR /root/AX9T-hack
RUN npm install && npm install -g pm2 || yarn install --network-concurrency 1
COPY . .
EXPOSE 9090
CMD ["npm", "start"]
