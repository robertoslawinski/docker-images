FROM ubuntu:latest

RUN apt update && apt install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /var/www/html

RUN echo "Hello Docker" > index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
