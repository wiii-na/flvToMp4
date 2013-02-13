#!/bin/sh
if [ -n $1 ]
then
  bitrate=$1
else
  bitrate="400k"
fi

mkdir flv

for i in `ls *flv`
do
  ffmpeg -y -i ${i} -vcodec libx264 -b ${bitrate} -ac 2 -ar 44100 -ab 128k  `basename ${i} .flv`.mp4
  mv ${i} flv
done
