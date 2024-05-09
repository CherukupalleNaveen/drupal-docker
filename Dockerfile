FROM drupal:10

RUN apt-get update && \
    apt-get install -y \
        git \
        vim \
        libpng-dev \
        libjpeg-dev \
        libxml2-dev \
        libfreetype6-dev \
        libwebp-dev \
        libjpeg62-turbo-dev \
        libxpm-dev \
        libpng-dev \
        libfreetype6-dev \
        libzip-dev \
        libbz2-dev \
        libxslt-dev \
        unzip \
        && \
    rm -rf /var/lib/apt/lists/*

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

RUN { \
        echo 'memory_limit = 256M'; \
        echo 'upload_max_filesize = 64M'; \
        echo 'post_max_size = 64M'; \
        echo 'max_execution_time = 300'; \
        echo 'date.timezone = "UTC"'; \
    } > /usr/local/etc/php/conf.d/drupal-recommended.ini

EXPOSE 80
