# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"
# ZSH_THEME="agnoster" 

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(systemd git github vundle colored-man-pages emoji archlinux pyenv rbenv nvm safe-paste)

source $ZSH/oh-my-zsh.sh

# Customize...

# for the path
export PATH="$HOME/bin:$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"
export NQDIR="$HOME/.nq"
export VISUAL="vim"
export EDITOR="vim"
# for cross toolchain
export PATH=/home/chong/code/esp-open-sdk/xtensa-lx106-elf/bin:/opt/gcc-arm-none-eabi/gcc-arm-none-eabi-4_9-2015q3/bin:$PATH

eval "$(pyenv virtualenv-init -)"
eval "$(thefuck --alias)"
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh


alias -s pdf=mupdf
alias -s md=remarkable
alias -s mt=chrome
alias u='du -sh'
alias vi=nvim
alias emacs="emacs -nw"
alias fansp="sensors|grep RPM|cut -d' ' -f5-6"
alias netconf="sudo ifconfig eth0 192.168.2.100 && sudo route add default gw 192.168.2.1 && sudo sh -c \"echo 'nameserver 10.3.8.1' > /etc/resolv.conf\""
alias capacity="upower -i /org/freedesktop/UPower/devices/battery_BAT0|grep capacity"
alias winfs="(sudo /usr/local/bin/sshd -D&)"
alias kx="sudo killall Xorg"
# alias td="tmux detach -s `tmux list-sessions|grep 'attached'|cut -d':' -f1`"
alias td="tmux detach -s"
alias ta="tmux -2 attach -t"
alias server="python2 -m SimpleHTTPServer"
# alias port="port(){lsof -i tcp:$@;};port $1"
alias opera="(opera --proxy-server='socks://127.0.0.1:1080' > /dev/null 2>&1 &)"
alias timestamp="date +%y%m%d%t%H:%M"

hash -d W="/opt/sdk/qca4004/qca4004/target"
hash -d C="/opt/sdk/qca4004/AirCleaner/target"
hash -d A="/opt/sdk/qca4004/qca4004_sdk_3.3.4CS3/target"
hash -d E="/opt/sdk/esp8266/esp_iot_rtos_sdk"
hash -d M="/opt/sdk/mw300/current"
hash -d J="/opt/app/joylink"
hash -d G="/opt/app/gome"
hash -d U="/opt/app/suning"
hash -d S0="/opt/app/DKRJ627"
hash -d S1="/opt/app/DKRJ689"
hash -d T="/opt/app/tutor/source"
