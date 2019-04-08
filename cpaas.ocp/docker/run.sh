chown -R www-data:www-data /var/www/opensips-cp/

apt-get update && apt-get install php5 -y php5-gd php5-mysql php5-xmlrpc php-pear php5-cli mysql-client

echo 'Alias /cp "/var/www/opensips-cp/web"' >> /etc/apache2/apache2.conf
sed -i  's/short_open_tag.*/short_open_tag = On/' /etc/php5/apache2/php.ini

pear install MDB2
pear install MDB2#mysql
pear install log

mysql -h 192.168.13.100 -ppssword -uroot opensips < /var/www/opensips-cp/config/db_schema.mysql

mysql -h 192.168.13.100 -ppssword -uroot opensips -e "INSERT INTO ocp_admin_privileges (username,password,first_name,last_name,ha1,available_tools,permissions) values ('admin','3alayemeem','admin','admin',md5('admin:3alayemeem'),'all','all');"


sudo service apache2 stop
sleep 3 
sudo /usr/sbin/apache2ctl -D FOREGROUND

