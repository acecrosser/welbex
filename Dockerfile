FROM debian
LABEL maintainer="Shilke Alex acecrosser@yandex.ru"  
ADD sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y python3 python3-pip supervisor postgresql
RUN mkdir -p /home/welbex/app
RUN mkdir -p /home/welbex/env
COPY app /home/welbex/app
ADD welbex.conf /etc/supervisor/conf.d/welbex.conf
ADD .env /home/welbex/app/.env
RUN python3 -m venv /home/welbec/env
RUN source /home/welbex/env/bin/activate
RUN pip install -r requirements.txt
RUN pip install gunicorn
RUN cd /home/welbex/app
RUN export FLASK_APP=app
RUN python3 make_db.py
RUN flask db upgrade
RUN python3 insert_test_data.py
EXPOSE 8000
CMD ["/usr/bin/supervisord"]
