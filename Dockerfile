FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
LABEL maintainer="Shilke Alex acecrosser@yandex.ru"  
RUN apt-get update
RUN apt-get install -y python3 python3-pip supervisor postgresql
RUN apt-get install -y postgresql-contrib
RUN apt-get install -y postgresql-client
RUN chmod -R 0700 /var/lib/postgresql/10/main
RUN pg_ctlcluster 10 main start
RUN mkdir -p /home/welbex/app
COPY app /home/welbex/app
RUN pg_lsclusters
ADD welbex.conf /etc/supervisor/conf.d/welbex.conf
ADD .env /home/welbex/app/.env
ADD requirements.txt /home/welbex/requirements.txt
RUN python3 -m pip install -r /home/welbex/requirements.txt
RUN python3 -m pip install gunicorn
RUN export FLASK_APP=app
RUN python3 /home/welbex/app/make_db.py
RUN flask db upgrade
RUN python3 /home/welbex/app/insert_test_data.py
EXPOSE 8000
CMD ["/usr/bin/supervisord"]
