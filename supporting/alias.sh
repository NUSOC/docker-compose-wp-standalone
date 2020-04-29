
alias wp='wp --allow-root '
alias ll='ls -lah '


function install_helpers {
  apt update -y
  apt install vim less git -y
}
