#!/bin/bash

rm -f cookies.txt
curl -c cookies.txt -d "username=$2&password=$3" https://www.fastmail.fm/
curl -X POST -b cookies.txt -F file=@./contacts.vcf https://www.fastmail.fm/ct/u/?u=$1
rm -f cookies.txt contacts.vcf
