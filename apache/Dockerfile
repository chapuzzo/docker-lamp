FROM php:5-apache
RUN useradd -u 1000 -m www-bridge-user

RUN apt-get update && curl -sL https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get install -y \
	git \
	wget \
	zlib1g-dev \
	zip \
	vim \
	mysql-client \
	libpng12-dev \
	libmcrypt-dev \
	libicu-dev \
	nodejs \
	libfreetype6-dev \
	libjpeg62-turbo-dev \
	ssmtp \
	&& apt-get install -y libmagickwand-dev --no-install-recommends \
	&& docker-php-ext-install mbstring \
	&& docker-php-ext-install pdo_mysql \
	&& docker-php-ext-install mysqli \
	&& docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
	&& docker-php-ext-install gd \
	&& docker-php-ext-install mcrypt \
	&& docker-php-ext-install opcache \
	&& docker-php-ext-install pcntl \
	&& docker-php-ext-install intl \
	&& docker-php-ext-install zip \
	&& pecl install imagick \
	&& docker-php-ext-enable imagick \
	&& rm -r /var/lib/apt/lists/* \
	&& curl -sS https://getcomposer.org/installer | php \
	&& mv composer.phar /usr/bin/composer \
	&& a2enmod rewrite

RUN pecl install xdebug-2.5.5

RUN npm install -g uglify-js uglifycss less

ADD templates/apache2.conf /etc/apache2/
ADD templates/php.ini /usr/local/etc/php/
ADD templates/ssmtp.conf /etc/ssmtp/
ADD templates/xdebug.ini /usr/local/etc/php/conf.d/


