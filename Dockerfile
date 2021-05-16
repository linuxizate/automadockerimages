FROM ubuntu

RUN apt update
RUN apt install nginx -y
RUN echo "Ready My CI/CD system" > /var/www/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

