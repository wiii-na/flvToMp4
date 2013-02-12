#!/bin/sh
for i in `ls *flv`
do
  ffmpeg -y -i ${i} -vcodec libx264 -b 800k -ac 2 -ar 44100 -ab 128k  `basename ${i} .flv`.mp4
done
