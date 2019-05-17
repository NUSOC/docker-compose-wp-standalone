


Set up 
-
Create a .env with the following key/value pairs
```
MYSQL_ROOT_PASSWORD=<<passphrase>>
WORDPRESS_DB_PASSWORD=<<passphrase>>
LABEL=<<label for traefik>>
URL=<<URL>>
```

Launch:
-
```
git clone ___ folder-name
cd folder-name
docker-composer up -d
```

In Container
-
```
wp core install --allow-root --url=https://domain.to.use/ --title=TEST --admin_user=root --admin_email=no@example.com  
```

Additional
-
In the container, see the `/scripts` folder for to install wp-cli
