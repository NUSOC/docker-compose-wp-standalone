
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
docker-composer up -d
```

Additional
-
In the container, see the `/scripts` folder for to install wp-cli. (I've set up `dc` as an alias to docker-compose on the host system. )

```
# dc exec wordpress sh /scripts/install.wpcli.sh
# dc exec wordpress core install --allow-root --url=https://domain.to.use/ --title=TEST --admin_user=root --admin_email=no@example.com
# dc exec wordpress wp --allow-root core update
# dc exec wordpress wp --allow-root plugin install wordfence --activate
# dc exec wordpress wp --allow-root plugin install all-in-one-wp-migration --activate
```
