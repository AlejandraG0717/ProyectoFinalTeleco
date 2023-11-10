upstream backend {
	server 192.168.100.6;
	server 192.168.100.7;
	server 192.168.100.8;
}

server {
	listen 80;
	location / {
		proxy_pass http://backend;
	}
}
