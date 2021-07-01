#!/bin/bash
yum install httpd -y
service httpd start
chkconfig httpd on
echo "TF module " > /var/www/html/index.html