FROM debian:9.13

RUN apt-get update && apt -y install lsb-release \
apt-transport-https \
ca-certificates \
wget \
&& wget -O /etc/apt/trusted.gpg.d/php.gpg https://packages.sury.org/php/apt.gpg

RUN echo "deb https://packages.sury.org/php/ $(lsb_release -sc) main" | tee /etc/apt/sources.list.d/php.list && apt update \
&& apt -y install apache2 \
	          php7.4 \
	          libapache2-mod-php7.4 \
		  libapache2-mpm-itk \
		  php7.4-common \
		  php7.4-gd \
		  php7.4-mysql \
		  php7.4-mbstring \
		  php7.4-curl \
		  php7.4-dom \
		  php7.4-imagick \
		  php7.4-zip

RUN a2dissite 000-default

RUN useradd -d /var/www/site-2.ru -m -G www-data -s /bin/false -u 1020 site-2.ru \
 && mkdir /etc/apache2/sslcerts

CMD ["apachectl","-D","FOREGROUND"]		 
