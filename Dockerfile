FROM qiushaocloud/ub1604-nvm-node-base:latest

RUN apt update \
	&& apt install -y redis-server

WORKDIR /root

CMD ["redis-server /etc/redis/redis.conf"]