update:
	cp ~/.gitconfig gitconfig
	cp ~/.vimrc vimrc
	cp ~/.ssh/config ssh_config
	cp ~/.tmux.conf tmux.conf
	cp ~/.zshrc zshrc
	cp ~/.xinitrc xinitrc
	cp ~/code/bar/config.h bar_config
	cp ~/code/monsterwm/config.h monsterwm_config
	cp ~/.rtorrent.rc rtorrent.rc
	cp ~/.mpd/mpd.conf mpd.conf

install:
	cp gitconfig ~/.gitconfig 
	cp vimrc ~/.vimrc
	cp ssh_config ~/.ssh/config
	cp tmux.conf ~/.tmux.conf
	cp zshrc ~/.zshrc
	cp xinitrc ~/.xinitrc
	cp bar_config ~/code/bar/config.h
	cp monsterwm_config ~/code/monsterwm/config.h
	cp rtorrent.rc ~/.rtorrent.rc
	cp mpd.conf ~/.mpd/mpd.conf
