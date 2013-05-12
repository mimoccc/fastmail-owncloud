#!/bin/bash

rm -f ./contacts.vcf
wget --no-check-certificate --auth-no-challenge --no-clobber --http-user="$2" --http-password="$3" -O ./contacts.vcf "$1/remote.php/carddav/addressbooks/$2/contacts?export"
