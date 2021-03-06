server {
		listen				80;
		listen				443 ssl;
		server_name			exemple.com;
		ssl					on;
		ssl_certificate		/ssl/exemple.com.crt;
		ssl_certificate_key	/ssl/exemple.com.key;
		root /var/www/html;
		index index.php index.html index.htm index.nginx-debian.html;

		location / {
				try_files $uri $uri/ =404;
		}

		location ~ \.php$ {
				include snippets/fastcgi-php.conf;
				fastcgi_pass unix:/var/run/php/php7.3-fpm.sock;
		}

		location ~ /\.ht {
				deny all;
		}
}
