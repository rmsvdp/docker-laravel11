# Usar la imagen oficial de PHP con Apache
FROM php:8.2-apache

# Instalar dependencias necesarias
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    libzip-dev \
    libpq-dev \
    && docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd zip
RUN apt-get install -y apache2
# Habilitar el módulo de Apache rewrite
RUN a2enmod rewrite

# Instalar Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Establecer el directorio de trabajo
WORKDIR /var/www/html

# Copiar el archivo de configuración de Apache
COPY ./docker/apache.conf /etc/apache2/sites-available/000-default.conf

# Copiar el archivo de configuración de PHP
COPY ./docker/php.ini /usr/local/etc/php/conf.d/custom.ini

# Exponer el puerto 80
EXPOSE 80


# Comando por defecto
CMD ["apache2-foreground"]