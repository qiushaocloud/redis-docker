CURR_DIR=$(cd "$(dirname "$0")"; pwd)

if [ ! -f "$CURR_DIR/.env" ];then
  echo "file $CURR_DIR/.env is not exist"
  exit
fi

REDIS_DATA_PATH=`grep REDIS_DATA_PATH $CURR_DIR/.env|awk -F '=' '{print $2}' | awk '$1=$1' | sed -e "s/'//g"`
REDIS_CFG_FILE_PATH=`grep REDIS_CFG_FILE_PATH $CURR_DIR/.env|awk -F '=' '{print $2}' | awk '$1=$1' | sed -e "s/'//g"`

mkdir -p $REDIS_DATA_PATH

if [ ! -f "$REDIS_CFG_FILE_PATH" ];then
  echo "file $REDIS_CFG_FILE_PATH is not exist, need copy $CURR_DIR/test-volumes/redis.conf to $REDIS_CFG_FILE_PATH"
  mkdir -p `dirname $REDIS_CFG_FILE_PATH`
  cp $CURR_DIR/test-volumes/redis.conf $REDIS_CFG_FILE_PATH
fi

docker-compose up -d