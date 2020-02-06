
Clone
-
```
git clone ___ folder-name
cd folder-name
```

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
mv docker-compose-TYPE.yml docker-compose.yml
docker-composer up -d
```

Additional
-
In the container, see the `/scripts` folder for to install wp-cli. 

```
docker-compose exec wordpress sh /scripts/install.wpcli.sh
docker-compose exec wordpress wp core install --allow-root --title=TEST --admin_user=root --admin_email=no@example.com --url=https://domain.to.use/
docker-compose exec wordpress wp --allow-root core update
docker-compose exec wordpress wp --allow-root plugin install wordfence --activate
docker-compose exec wordpress wp --allow-root plugin install all-in-one-wp-migration --activate
docker-compose exec wordpress wp --allow-root plugin install /scripts/all-in-one-wp-migration-unlimited-extension.zip --activate
```

fix permissions
```
docker-compose exec wordpress chgrp www-data -R .
docker-compose exec wordpress chmod g+wr -R .
```
Multisite
```
docker-compose exec wordpress wp  --allow-root core multisite-convert
```
