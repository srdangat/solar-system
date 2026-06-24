FROM node:18-alpine3.17

WORKDIR /usr/app
COPY package*.json ./
RUN npm install

COPY . .

# Placeholder environment variables for local tests
ENV MONGO_URI=uriPlaceholder
ENV MONGO_USERNAME=usernamePlaceholder
ENV MONGO_PASSWORD=passwordPlaceholder

EXPOSE 3000
CMD ["npm", "start"]