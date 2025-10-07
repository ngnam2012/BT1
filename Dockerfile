FROM node:18

WORKDIR /app

COPY package*.json ./

RUN npm install --production

COPY . .
ENV PORT=1337
EXPOSE 1337

CMD ["npm", "start"]
