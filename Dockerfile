FROM debian:9.13

RUN apt-get update && apt-get -y install nginx

COPY config/nginx/sites-available/nginx /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/nginx /etc/nginx/sites-enabled/nginx && rm -f /etc/nginx/sites-enabled/default

RUN mkdir /etc/nginx/sslcerts

EXPOSE 80 443

CMD ["nginx","-g","daemon off;"]		 
