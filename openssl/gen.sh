#!/bin/bash
#openssl genrsa -out CA/private/ca.key 2048
#openssl ca -config openssl.cnf -gencrl -out crl.pem
openssl genrsa -out elasticservice.key 2048
openssl req -new -out elasticservice.csr -key elasticservice.key -config openssl.cnf
openssl req -in elasticservice.csr -noout -text
