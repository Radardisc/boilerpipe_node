TARGET_FOLDER=$1

if [ -z "$TARGET_FOLDER" ]; then 
    echo "Usage deploy.sh {target_directory}"
    exit 1
fi

if [ ! -d "$TARGET_FOLDER" ]; then 
    echo "Usage deploy.sh {target_directory}"
    exit 1
fi

cp log4j.properties $TARGET_FOLDER/
cp config.properties $TARGET_FOLDER/
cp run.sh $TARGET_FOLDER/
cp target/boilerpipe_node-0.0.1-SNAPSHOT.jar $TARGET_FOLDER/boilerpipe_node.jar
cp boilerpipe_node_daemon.sh  $TARGET_FOLDER/
ln -s $TARGET_FOLDER/boilerpipe_node_daemon.sh $TARGET_FOLDER/daemon.sh
mkdir -p $TARGET_FOLDER/log