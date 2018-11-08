# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="simple"
ZSH_THEME="spaceship" 

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
plugins=(aws docker docker-compose systemd autojump git github vundle colored-man-pages emoji archlinux pyenv rbenv nvm safe-paste thefuck rust cargo)

source $ZSH/oh-my-zsh.sh

# Customize...

# export PYTHONDONTWRITEBYTECODE=1
export PYENV_ROOT="/opt/pyenv"
export NQDIR="$HOME/.nq"
export VISUAL="vim"
export EDITOR="vim"
export AURDEST="/tmp/pacaur"
export GOPATH="/opt/go"
export PATH="$HOME/bin:$GOPATH/bin:$PATH:/opt/mos/bin"
# for cross toolchain
export PATH=/home/chong/code/esp-open-sdk/xtensa-lx106-elf/bin:/opt/gcc-arm-none-eabi/gcc-arm-none-eabi-4_9-2015q3/bin:$PATH

[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh
if [[ -x /usr/bin/fzf ]] && [[ -x /usr/bin/ag ]]; then
    export FZF_DEFAULT_COMMAND='ag --nocolor -g ""'
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
    export FZF_DEFAULT_OPTS='
    --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
    --color info:108,prompt:109,spinner:108,pointer:168,marker:168
    '
fi
[ -f /etc/grc.zsh ] && source /etc/grc.zsh


alias -s pdf=mupdf
alias -s md=typora
alias -s mt=firefox
alias u='du -sh'
alias vi=nvim
alias emacs="emacs -nw"
alias fansp="sensors|grep RPM|cut -d' ' -f5-6"
alias capacity="upower -i `upower -e|grep battery`|grep capacity"
alias winfs="(sudo /usr/local/bin/sshd -D&)"
alias kx="sudo killall Xorg"
alias td="tmux detach -s"
alias ta="tmux -2 attach -t"
alias ns="sudo netctl-auto switch-to"
alias server="python3 -m http.server || python2 -m SimpleHTTPServer"
alias opera="(opera --proxy-server='socks://127.0.0.1:1080' > /dev/null 2>&1 &)"
alias port="lsof -i "
alias tdic="date +%y%m%d%t%H:%M >> ~/.dic"
alias timestamp="date +%y%m%d%H%M"
alias sk="xmodmap ~/.xmodmaprc"
alias jedi_venv="cd ~/code/JediHTTP && python setup.py install && cd -"
alias dim="xbacklight -dec 5"
alias lit="xbacklight -inc 5"
alias unar="unar -e gb18030"
alias cat=bat
alias ip="ip -c"
alias tether="sudo easytether-usb && sudo dhcpcd tap-easytether"
alias audio-hdmi='pacmd set-card-profile 0 output:hdmi-stereo+input:analog-stereo'
alias audio-laptop='pacmd set-card-profile 0 output:analog-stereo+input:analog-stereo'
alias audio-bt='pacmd set-card-profile 0 output:a2dp_sink+input:analog-stereo'

hash -d Q="/opt/sdk/qca4004/current/target"
hash -d E="/opt/sdk/esp8266/esp_iot_rtos_sdk"
hash -d M="/opt/sdk/mw300/current"
hash -d T="/opt/app/tutor/source"
hash -d W="/opt/sdk/esp8266/ESP8266_RTOS_SDK/wheel"

function gi() { curl -Ls https://www.gitignore.io/api/$@ ;}
function cheat() { curl cheat.sh/$@ ;}
function weather() { curl wttr.in/$@ ;}
# function ipinfo() { curl -Ls tbip.alicdn.com/api/queryip | jq -r '.data' ;}
function publicip() { curl ipinfo.io ;}
function currency() { curl -Ls data.fixer.io/api/latest?access_key=74e40af2aadc8dab35c2693470b19dbe\&base=$@\&symbols=CNY,USD,GBP,EUR,AUD | json_reformat ;}
function qrify() { input=$(echo "$@" | sed s/" "/%20/g); curl qrenco.de/$input ;}

# load nerd font
[ -f /usr/lib/nerd-fonts-complete/scripts/lib/i_all.sh ] && source /usr/lib/nerd-fonts-complete/scripts/lib/i_all.sh
[ -f /home/chong/.nix-profile/etc/profile.d/nix.sh ] && source /home/chong/.nix-profile/etc/profile.d/nix.sh 
