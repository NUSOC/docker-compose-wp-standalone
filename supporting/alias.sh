
alias wp='wp --allow-root '
alias ll='ls -lah '

# Some stuff I need to upstart in a session
function upsie {
  apt update -y
  apt install vim less git -y
  sh /scripts/install.wpcli.sh
}

function replaceopenam {
  cd /var/www/html/wp-content/plugins
  rm -rf openam-authentication
  git clone https://github.com/NUSOC/openam-authentication.git
}
