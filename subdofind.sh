#!/usr/bin/bash

mkdir $1

echo "##########[***] sublister [***]##########"
sublist3r -d $1 -v -o $1/domains.txt

echo "##########[***] assetfinder [***]##########"
assetfinder --subs-only $1 | tee -a $1/domains.txt

echo "##########[***] amass [***]##########"
amass enum -passive -d $1 -v -o $1/domains.txt

echo "#################[***] onliner [***]##########"
curl -s "https://jldc.me/anubis/subdomains/$1" | grep -Po "((http|https):\/\/)?(([\w.-]*)\.([\w]*)\.([A-z]))\w+" | anew | tee -a $1/domains.txt

echo "##########[***] gospider onliner [***]##########"
gospider -d 0 -s "https://$1" -c 5 -t 100 -d 5 --blacklist jpg,jpeg,gif,css,tif,tiff,png,ttf,woff,woff2,ico,pdf,svg,txt | grep -Eo '(http|https)://[^/"]+' | anew | tee -a $1/domains.txt

echo "##########[***] sorting [***]##########"
sort -u $1/domains.txt -o $1/domains.txt

echo "##########[***] livedomain [***]##########"
cat $1/domains.txt | httprobe | tee -a $1/live.txt




