#!/bin/bash -ex

sudo su -

yum update

yum install httpd24 php56 php56-mysqlnd mysql56

chkconfig httpd on

cd /var/www/html

wget https://github.com/AWSinMotion/Twitter-Like-System-PHP/archive/master.zip

unzip -j master.zip

cat > /etc/httpd/conf.d/awsinmotion.conf << EOF
<Directory "/var/www/html">
    AllowOverride All
</Directory>
EOF

service httpd start
