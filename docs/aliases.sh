# Este arquivo serve para definir alias para comandos do sistema, devendo ser adicionado aos arquivos de configuração do shell para que sejam executados sempre que o shell for iniciado.

alias aliasconfig='nano ~/.zshrc_aliases'

alias update='sudo apt upgrade'
alias ..='cd ..'
alias ll='ls -alF'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias diskspace='df -h'
alias dock='sudo docker'

alias y='yarn'
alias yd='yarn dev'
alias ys='yarn start'
alias yb='yarn build'