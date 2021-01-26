FROM node as build-phase
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build



