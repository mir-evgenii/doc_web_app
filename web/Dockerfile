FROM php:7.3.5-apache-stretch

RUN apt-get update \
    && debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)" \
    && docker-php-ext-install pdo_mysql pcntl
    && a2enmod rewrite
    && systemctl restart apache2

