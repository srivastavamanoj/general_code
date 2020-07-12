#!/bin/bash

if [ ! -n "$1" ]
then
  echo "Usage: `basename $0` \$video_file.mp4"
  exit $E_BADARGS
fi
  
input=$1
dir=$(pwd)
output=$dir'/audio/'$input'.aac'
#echo $input
#echo $output
args=' -vn -acodec copy '
cmd='ffmpeg -i '$input$args$output
echo 'launching: '$cmd
$cmd
