server {
		listen 80;
		listen				443 ssl;
		ssl					on;
		server_name			exemple.com;
		ssl_certificate		/ssl/exemple.com.crt;
		ssl_certificate_key	/ssl/exemple.com.key;
		ssl_ciphers			HIGH:!aNULL:!MD5;
		root /var/www/html;
		index index.php index.html index.htm index.nginx-debian.html;

		location / {
				autoindex on;
				autoindex_exact_size off;
				autoindex_localtime on;
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
