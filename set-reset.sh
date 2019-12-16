
docker-compose up -d --force-recreate
docker-compose exec wordpress apt update
docker-compose exec wordpress sh /scripts/install.wpcli.sh
docker-compose exec wordpress wp core install --allow-root --title=TEST --admin_user=root --admin_email=no@example.com --url=$1
docker-compose exec wordpress wp --allow-root core update
docker-compose exec wordpress wp --allow-root plugin update --all
docker-compose exec wordpress wp --allow-root theme update --all
docker-compose exec wordpress chgrp www-data -R .
docker-compose exec wordpress chmod g+wr -R .
