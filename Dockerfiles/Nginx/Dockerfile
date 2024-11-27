#use Nginx base image
FROM nginx:latest
RUN mkdir -p nginx/app
#set the working directory
WORKDIR /app

RUN apt-get update && apt-get -y install redis-server

EXPOSE 6000

#start redis
CMD ["redis-server", "app.ng"]

