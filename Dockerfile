FROM drupal:10

RUN { \
        echo 'memory_limit = 256M'; \
        echo 'upload_max_filesize = 64M'; \
        echo 'post_max_size = 64M'; \
        echo 'max_execution_time = 300'; \
        echo 'date.timezone = "UTC"'; \
    } > /usr/local/etc/php/conf.d/drupal-recommended.ini

EXPOSE 80
