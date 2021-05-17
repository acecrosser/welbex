FROM debian
LABEL maintainer="Shilke Alex acecrosser@yandex.ru"  
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python3 python3-pip supervisor postgresql
RUN apt-get install -y postgresql-contrib
RUN apt-get install -y postgresql-client
RUN postgres -D /usr/local/pgsql/data >logfile 2>&1 &
RUN mkdir -p /home/welbex/app
RUN mkdir -p /home/welbex/env
COPY app /home/welbex/app
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
