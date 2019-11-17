FROM 200.0.1.100:5000/mysql5.7

ENV MYSQL_ROOT_PASSWORD=manager

COPY product.sql /docker-entrypoint-initdb.d/

ENV MYSQL_DATABASE=sunbeam_devops

EXPOSE 3306
