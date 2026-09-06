# Usamos la misma versión de la semana pasada
FROM mysql:8.0

ENV MYSQL_DATABASE=mydatabase
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=password
ENV MYSQL_ROOT_PASSWORD=root

# Copiamos el script SQL a la carpeta especial de Docker para que lo autoejecute
COPY init.sql /docker-entrypoint-initdb.d/