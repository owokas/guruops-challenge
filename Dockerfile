# Write Dockerfile for the nodejs application
FROM node:24

WORKDIR /app

COPY package*.json ./
RUN npm install
RUN npm run build

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
