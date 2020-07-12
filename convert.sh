#!/bin/bash

input=$1
dir=$(pwd)
output=$dir'/data/'$input'.aac'
#echo $input
#echo $output
args=' -vn -acodec copy '
cmd='ffmpeg -i '$input$args$output
echo 'launching: '$cmd
$cmd
