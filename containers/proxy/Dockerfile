FROM nginx:latest

RUN apt-get update && apt-get install -y letsencrypt cron

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./run.sh /run.sh

COPY ./cronjob.txt /etc/cron.d/mycron
RUN chmod 0644 /etc/cron.d/mycron
RUN crontab /etc/cron.d/mycron

EXPOSE 443
EXPOSE 80

CMD nginx -g 'daemon off;' & certbot --nginx