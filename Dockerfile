FROM ubuntu:latest

# Actualiza repositórios e instala o Apache
RUN apt update && apt install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

# Define a pasta do site
WORKDIR /var/www/html

# Cria o ficheiro index.html com o texto "Hello Docker"
RUN echo "Hello Docker" > index.html

# Expõe a porta 80 (HTTP)
EXPOSE 80

# Arranca o Apache em primeiro plano
CMD ["apachectl", "-D", "FOREGROUND"]
