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
plugins=(systemd git github vundle colored-man-pages emoji archlinux pyenv rbenv nvm)

source $ZSH/oh-my-zsh.sh

# Customize...

alias -s pdf=mupdf
alias -s md=remarkable
alias -s mt=chrome
alias u='du -sh'
alias vi=nvim
alias emacs="emacs -nw -Q"
alias fansp="sensors|grep RPM|cut -d' ' -f5-6"
alias netconf="sudo ifconfig eth0 192.168.2.100 && sudo route add default gw 192.168.2.1 && sudo sh -c \"echo 'nameserver 10.3.8.1' > /etc/resolv.conf\""

# for the path
export PATH="$HOME/bin:$HOME/go/bin:$PATH"
export GOPATH="$HOME/go"
export NQDIR="$HOME/.nq"

eval "$(pyenv virtualenv-init -)"
[ -f /etc/profile.d/fzf.zsh ] && source /etc/profile.d/fzf.zsh

# for the esp8266 cross toolchain
export PATH=/home/chong/code/esp-open-sdk/xtensa-lx106-elf/bin:/opt/wm_tool_chains/gcc-arm-none-eabi-4_9-2014q4/bin:$PATH
hash -d W="/opt/qca4004/target"
hash -d C="/opt/AirCleaner/target"
hash -d M="/opt/marvell/wmsdk_bundle-3.1.16"
hash -d E="/opt/esp_iot_rtos_sdk"
hash -d T="/opt/tutor/source"
hash -d J="/opt/joylink"
