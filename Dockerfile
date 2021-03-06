FROM python
LABEL maintainer="Shilke Alex acecrosser@yandex.ru"  
RUN apt-get update
RUN apt-get install -y supervisor
RUN mkdir -p /home/welbex/app
COPY app /home/welbex/app
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD .env /home/welbex/app/.env
ADD requirements.txt /home/welbex/requirements.txt
RUN pip install -r /home/welbex/requirements.txt
WORKDIR /home/welbex/app
RUN export FLASK_APP=app
EXPOSE 8000
CMD ["/usr/bin/supervisord"]
