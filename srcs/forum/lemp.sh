systemctl start php-fpm;
systemctl start nginx;
systemctl status php-fpm | grep Active; 
systemctl status nginx | grep Active;
