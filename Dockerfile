FROM qiushaocloud/ub1604-nvm-node-base:latest

RUN apt update \
	&& apt install -y redis-server

COPY ./bootstarp.sh /root/bootstarp.sh

RUN chmod 777 /root/bootstarp.sh

WORKDIR /root

CMD ["/root/bootstarp.sh"]
# CMD ["redis-server /etc/redis/redis.conf"]