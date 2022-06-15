FROM python:3
WORKDIR /usr/src/app
MAINTAINER Daniel Pérez Gallo "dapega01@gmail.com"
RUN pip install django mysqlclient
ADD django_tutorial/ /usr/src/app
ADD script.sh /opt
RUN mkdir static && chmod +x /opt/script.sh
ENV ALLOWED_HOSTS=*
ENV HOST=mariadb
ENV USUARIO=django
ENV CONTRA=django
ENV BASE_DATOS=django
ENV DJANGO_SUPERUSER_PASSWORD=admin
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_EMAIL=admin@example.org
CMD ["/opt/script.sh"]
