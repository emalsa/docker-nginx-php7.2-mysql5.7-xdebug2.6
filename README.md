
#### **WHO/WHAT**

##### Docker with XDEBUG for PHPStorm

	- Nginx
	- PHP 7.2
	- Mysql 5.7
	- XDebug 2.6 	

Works for:

- MacOSX 
(No Configuration needed)
	
- Others (should work)
(Change in xdebug.ini at _xdebug.remote_host=docker.for.mac.localhost_ the value with your local Machine IP
E.g _xdebug.remote_host=**192.168.10.10**_)
---
##### Configuration

It's two simple configurations needed in PHPStorm to enable XDEBUG (See images):

Go to `Preferences > Languages & Frameworks > PHP > Servers`

Add a new server:

- Name: _dock_ (or change in docker-compose.yml the value `dock` here `- "PHP_IDE_CONFIG=serverName=dock"` with your custom value)
- Host: _127.0.0.1_ (maybe on Non-MacOSX with your local IP?)
- Port: _80_
- Mapping: Projectroot with _/var/www_

then

Go to `Preferences > Languages & Frameworks > PHP > Debug`
add `9001` as Port (or change it in _xdebug.ini_ at _xdebug.remote_port_)
---
##### Start

Run `docker-compose up -d` and you can finally debug your application

---
##### Docroot/Project files
Put your Application/PHP-File... at the place where you find docker-compose-yml

- Projectroot   
-- .docker/   
-- .docker-compose.yml  
-- _app/_ OR _index.php_ OR...
---
Happy Debugging