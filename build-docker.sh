docker pull qiushaocloud/ub1604-nvm-node-base
#docker rmi -f qiushaocloud/redis || true
docker build -t qiushaocloud/redis .
