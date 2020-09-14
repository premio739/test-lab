FROM debian:9.13

RUN apt-get update && apt-get -y install nginx

COPY config/sites-available/site-2.ru.conf /etc/nginx/sites-available/

RUN ln -s /etc/nginx/sites-available/site-2.ru.conf /etc/nginx/sites-enabled/site-2.ru.conf \
 && rm -f /etc/nginx/sites-enabled/default \
 && mkdir /etc/nginx/sslcerts

CMD ["nginx","-g","daemon off;"]		 
