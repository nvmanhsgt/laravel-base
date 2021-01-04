FROM php:8.0-fpm

# Install PHP extensions and PECL modules.
RUN buildDeps=" \
      libonig-dev \
      libpng-dev \
      libzip-dev \
      zlib1g-dev \
    " \
    runtimeDeps=" \
      cron \
      curl \
      git \
    " \
 && apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends $buildDeps $runtimeDeps \
 && docker-php-ext-install bcmath mbstring opcache pdo_mysql zip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install Composer.
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
 && ln -s $(composer config --global home) /root/composer
ENV PATH=$PATH:/root/composer/vendor/bin COMPOSER_ALLOW_SUPERUSER=1

# Copy ini files.
COPY php.ini /usr/local/etc/php/

# Declare default environment variables.
ENV PHP_IDE_CONFIG 'serverName=localhost'

WORKDIR /var/www/html

CMD php-fpm
