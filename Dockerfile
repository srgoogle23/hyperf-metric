FROM 289208114389.dkr.ecr.us-east-1.amazonaws.com/moonlight-images/php:8.2-pcov AS prod
ARG COMPOSER_AUTH
ENV COMPOSER_AUTH $COMPOSER_AUTH
WORKDIR /opt
COPY ./composer.* /opt/
RUN composer install --prefer-dist
COPY . /opt
ENTRYPOINT [ "sh" ]
