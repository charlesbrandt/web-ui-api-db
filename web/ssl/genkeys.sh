#!/bin/bash

#echo -e "Enter your virtual host FQDN: \nThis will generate the default name for Apache SSL Certificate and Key!"
#read cert
export cert="nginx"

# openssl genpkey -algorithm RSA -pkeyopt rsa_keygen_bits:2048 -out $cert.key
# chmod 600 $cert.key
# openssl req -new -key $cert.key -out $cert.csr
# openssl x509 -req -days 365 -in $cert.csr -signkey $cert.key -out $cert.crt

openssl req -subj '/CN=localhost' -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./nginx.key -out ./nginx.crt


echo -e "The Certificate and Key for $cert has been generated!"
exit 0