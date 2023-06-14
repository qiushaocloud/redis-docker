# redis-docker

#### introduce
This is a redis docker, please use docker-compose to run it, configure it according to your own needs, and configure the configuration information in the .env file

#### Instructions for use

1. Execute the command to grant permission to execute the script: `sed -i -e 's/\r$//' *.sh && chmod -R 755 *.sh`
2. Execute `cp env.tpl .env` and configure .env
3. According to the content filled in the .env file REDIS_CFG_FILE_PATH, copy test-volumes/redis.conf to $REDIS_CFG_FILE_PATH, and configure redis.conf according to your needs
4. Run ./run-docker.sh [Note: The lower version of docker-compose cannot recognize .env and needs to be upgraded. The version used by the author is: 1.29.2]
5. View the log: docker logs qiushaocloud-redis-server

#### Contribute

1. Fork this repository
2. Create a new Feat_xxx branch
3. Submit the code
4. Create a new Pull Request


#### Sharer information

1. Sharer's email: qiushaocloud@126.com
2. [Sharer website](https://www.qiushaocloud.top)
3. [gitlab built by the sharer](https://gitlab.qiushaocloud.top/qiushaocloud)
3. [Shared by gitee](https://gitee.com/qiushaocloud/dashboard/projects)
3. [Shared by github](https://github.com/qiushaocloud?tab=repositories)