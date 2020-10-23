
server {
	listen 80;

	root /var/www/mysite.com/publick_html;

	# Add index.php to the list if you are using PHP
	index index.html index.htm;

	server_name mysite.com www.mysite.com;

	location / {
              
		try_files $uri $uri/ =404;
	}
##             location  /page/ {
##              proxy_pass http://127.0.0.1:81/page.html;
             # proxy_set_header Host $host;
             # proxy_set_header X-Real-IP $remote_addr;
             # proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
             # proxy_set_header X-Forwarded-Proto $scheme;
##}
           
##             location /php {
##                       return 301 http://127.0.0.1:8080;
##}
         

##             location /mp3 {
##                       return 301 http://127.0.0.1/sleep.mp3;
      
##}

##            location /secondserver/ {
##              proxy_pass http://127.0.0.1:8080/secondserver.html;

             # proxy_set_header Host $host;
             # proxy_set_header X-Real-IP $remote_addr;
             # proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
             # proxy_set_header X-Forwarded-Proto $scheme;

##   }
##}
##server {
##        listen 81;


##        root /var/www/mysite.com/publick_html;

        # Add index.php to the list if you are using PHP
##        index index.html index.htm;

##        server_name mysite.com www.test.com;

}
