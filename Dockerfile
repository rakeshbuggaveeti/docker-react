FROM node as build-phase
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

FROM nginx
COPY --from=0 /app/build /usr/share/nginx/html



