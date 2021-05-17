FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive
LABEL maintainer="Shilke Alex acecrosser@yandex.ru"  
RUN apt-get update
RUN apt-get install -y python3 python3-pip supervisor postgresql
RUN apt-get install -y postgresql-contrib
RUN apt-get install -y postgresql-client
RUN mkdir -p /home/welbex/app
COPY app /home/welbex/app
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD .env /home/welbex/app/.env
ADD requirements.txt /home/welbex/requirements.txt
RUN python3 -m pip install -r /home/welbex/requirements.txt
RUN python3 -m pip install gunicorn
RUN echo "root:root" | chpasswd
EXPOSE 8000
CMD ["/usr/bin/supervisord"]
