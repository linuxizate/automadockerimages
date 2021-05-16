FROM ubuntu:20.04
RUN apt update
RUN apt install -y nginx
RUN echo Hola_CI_CD > /usr/share/nginx/html/index.html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
