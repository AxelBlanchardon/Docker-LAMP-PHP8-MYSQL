FROM php:8.0-apache

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

RUN apt-get clean && apt-get update && apt-get install --fix-missing wget git apt-transport-https lsb-release ca-certificates gnupg2 -y
RUN curl -sSk https://getcomposer.org/installer | php -- --disable-tls && \
   mv composer.phar /usr/local/bin/composer

#install symfony-cli globaly on system
RUN wget https://get.symfony.com/cli/installer -O - | bash && mv /root/.symfony/bin/symfony /usr/local/bin/symfony

RUN docker-php-ext-install pdo pdo_mysql
