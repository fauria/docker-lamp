# Minor tweeks

## Allow `root` database access without password

**Useful for development, insecure for production.**

* Start the image: `docker run -d --name lamp --rm -p 80:80 -e DISPLAY_ERRORS=true -v /home/david/Development/php:/var/www/html fauria/lamp`
* Log into image: `docker exec -ti lamp bash`
* Log into DB: `mysql`
* Update user privileges: `UPDATE mysql.user SET plugin = 'mysql_native_password' WHERE user = 'root' AND plugin = 'unix_socket';`
* Flush privileges: `flush privileges;`
* Restart DB: `service mysql restart`
