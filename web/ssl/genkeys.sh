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

# >$NAME.ext cat <<-EOF
# authorityKeyIdentifier=keyid,issuer
# basicConstraints=CA:FALSE
# keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
# subjectAltName = @alt_names
# [alt_names]
# DNS.1 = $NAME # Be sure to include the domain name here because Common Name is not so commonly honoured by itself
# DNS.2 = boilerplate_web_1 # Optionally, add additional domains (I've added a subdomain here)
# IP.1 = 127.0.0.1 # Optionally, add an IP address (if the connection which you have planned requires it)
# EOF