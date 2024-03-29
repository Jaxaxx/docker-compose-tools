#!/bin/sh


if [ "$1" = "" ]; then
  echo "imageName can't is null"
  exit 1
else
  echo imageName is : $1
fi

image_latest_full_name=$1
echo '\n-------------delete tmp image-------------'

echo local tmp images:  [$image_latest_full_name]
REMOVE_IMAGE_ID=`docker images | grep -E $image_latest_full_name | grep -E latest | awk '{print $3}'`

if [ "$REMOVE_IMAGE_ID" != "" ]; then
  docker rmi -f "$REMOVE_IMAGE_ID"
  echo "本地临时镜像已删除 $REMOVE_IMAGE_ID"
fi