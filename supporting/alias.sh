
alias wp='wp --allow-root '
alias ll='ls -lah '

# Some stuff I need to upstart in a session
function upsie {
  apt update -y
  apt install vim less git -y
}
