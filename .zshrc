#rulebend3r# Oh-My-Zsh
ZSH=/home/rulebend3r/.oh-my-zsh
ZSH_THEME="rulebend3r"    #newpowerlinegreen newpowerlinemagenta rulebend3r

#####################
###set consolefont###
#####################
#if [ $TERM = "linux" ]; then
#    setfont ter-powerline-v12n
#fi
#####################

#POWERLINE_RIGHT_A="date"
#POWERLINE_RIGHT_A="exit-status"
#POWERLINE_FULL_CURRENT_PATH="true"
#POWERLINE_SHOW_GIT_ON_RIGHT="true"
POWERLINE_DATE_FORMAT="%D{%d-%m}"
POWERLINE_HIDE_HOST_NAME="true"
POWERLINE_DETECT_SSH="true"
POWERLINE_GIT_CLEAN="✔"
POWERLINE_GIT_DIRTY="✘"
POWERLINE_GIT_ADDED="%F{green}✚%F{black}"
POWERLINE_GIT_MODIFIED="%F{blue}✹%F{black}"
POWERLINE_GIT_DELETED="%F{red}✖%F{black}"
POWERLINE_GIT_UNTRACKED="%F{cyan}✭%F{black}"
POWERLINE_GIT_RENAMED="➜"
POWERLINE_GIT_UNMERGED="═"
POWERLINE_RIGHT_A_COLOR_FRONT="black"
POWERLINE_RIGHT_A_COLOR_BACK="red"

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Set to this to use case-sensitive completion
CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Default Programs
#export NMON=cmknt
export EDITOR="vim"
export PAGER="less"
export BROWSER="brave-bin"
export BROWSERCLI="links"
export MOVPLAY="mpv"
export PICVIEW="sxiv"
export SNDPLAY="mpv"
export TERMINAL="tilix"
#export PULSE_LATENCY_MSEC=60
export TERM="xterm-256color"
export MPD_HOST="localhost"
export MPD_PORT="6600"
#export PATH=/home/rulebend3r/.cargo/bin/:$PATH
export PATH=/home/rulebend3r/.local/bin/:$PATH

# File Extensions
for ext in html org php com net no;    do alias -s $ext=$BROWSER; done
for ext in txt tex py PKGBUILD;        do alias -s $ext=$EDITOR; done
for ext in png jpg gif;            do alias -s $ext=$PICVIEW; done
for ext in mpg wmv avi mkv;        do alias -s $ext=$MOVPLAY; done
for ext in wav mp3 ogg;            do alias -s $ext=$SNDPLAY; done

########################################################
######################## ALIASES ####################### 
########################################################

## System
alias SSD='sudo shutdown -h now'
alias Suspend='sudo pm-suspend'
alias keys='xev'
alias SR='sudo reboot'
alias blank='setterm -blank 0'
alias AM='alsamixer'
alias GM='grub-mkconfig -o /boot/grub/grub.cfg'

# Git
alias cdG='cd /home/rulebend3r/Git/desktop'
alias GA='git add'
alias GC='git commit -m'
alias Push='git push origin master'
alias Pull='git pull'

# Configs
alias Config='cd ~/.config'
alias Background='~/.config/awesome/themes/rulebend3r/wall.jpg'
alias eKT='vim ~/.config/kitty/kitty.conf'
alias eST='sudo vim ~/st/config.h'
alias eRG='vim ~/.config/ranger/rc.conf'

# Fonts
alias Fonts='fc-cache -vf ~/.fonts'

## Flash iso to usb drive

#alias wipefs='wipefs --all /dev/sdd'

## Fun
alias aq='asciiquarium -c'
alias kitty='oneko'
alias ai='ascii-invaders'
alias PLC='phoon | lolcat'
alias cowsay='fortune | cowsay | lolcat'

## Conky
alias eC='vim ~/.config/awesome/conky/conkyrc'

## Packages
alias extract='dtrx'
alias gz='tar -xzf'
alias xz='tar -xJf'
alias bz='tar -xvjf'
alias bz2='tar -jxvf'

## Gentoo
alias ses='sudo eselect'
alias dep='sudo emerge --ask --verbose --depclean'
alias GL='genlop -t'
alias genlopremain='watch -cn 10 genlop -ci'
alias OneShot='emerge --ask --verbose --oneshot portage'
alias Rebuild='revdep-rebuild -v'
alias Sync='time emerge --sync'
alias S='emerge -s'
alias E='time emerge -av'
alias EU='time emerge --ask --verbose --update --newuse --deep @world'
alias EUB='time emerge --ask --verbose --newuse --update --deep --with-bdeps=y @world'
alias SES='sudo eix-sync'
alias SEU='sudo eix-update'
alias cdE='cd /etc && sudo su'
alias cdP='cd /etc/portage && sudo su'
alias cdu='cd /etc/portage/package.use && sudo su'
alias cdM='cd /etc/portage/package.mask && sudo su'
alias cdU='cd /etc/portage/package.unmask && sudo su'
alias cdK='cd /etc/portage/package.accept_keywords && sudo su'
alias eM='sudo vim /etc/portage/make.conf'
alias EW='emerge-webrsync'
alias eup='etc-update'
alias eK='eclean-kernel'
alias GK='genkernel --makeopts=-j9 --microcode --menuconfig all'
alias SEK='sudo eselect kernel list'
alias LA='sudo layman -a'
alias LD='sudo layman -d'
alias LS='sudo layman -S'

## Portage
alias EFL='tail -f /var/log/emerge-fetch.log'
alias EL='tail -f /var/log/emerge.log'

## Arch
alias YT='yaourt'
alias YY='yaourt-gui'
alias PS='sudo pacman -S'
alias PR='sudo pacman -R'
alias PSS='pacman -Ss'
alias PL='tail -f /var/log/pacman.log'
alias Unlock='sudo rm /var/lib/pacman/db.lck'
alias PU='sudo pacman -Syyu'

## Debian/Debian-Based
alias Update='sudo apt-get update'
alias Upgrade='sudo apt-get dist-upgrade'
alias DL='tail -f /var/log/dpkg.log'
alias SAS='sudo apt-cache search'
alias SI='sudo apt-get install'
alias SAR='sudo apt auto-remove'

## Awesome 
alias eRC='cd ~/.config/awesome && vim rc.lua'
alias eW='cd ~/.config/awesome && vim wi.lua'
alias eRT='cd ~/.config/awesome/themes/rulebend3r && vim theme.lua' 
alias cdA='cd ~/.config/awesome'
alias cdT='cd ~/.config/awesome/themes/rulebend3r'
alias ACS='mupdf ~/.awesome-cheat-sheet.pdf'

## Tmux
alias TM='tmux'
alias eTM='vim ~/.tmux.conf'
alias tkill='tmux kill-session'

## Directories
alias ll='ls -l'
alias la='ls -ltra'
alias l='ls'
alias C='clear'
alias home='cd ~'
alias ..='cd ..'
alias ...='cd ...'
alias ....='cd ....'
alias .....='cd .....'
alias k='exit'
alias te='trash-empty'
alias tl='trash-list'
alias del='trash-put'
alias tr='trash-rm'
alias lsTrash='ls ~/.local/share/Trash/files/'
alias cdTrash='cd ~/.local/share/Trash/files/'
alias lsD='ls ~/Downloads'
alias cdD='cd ~/Downloads'
alias cdV='cd ~/Videos'
alias cdc='cd ~/.config'
alias RG='ranger'
alias cdGS='cd ~/Git/searx/'
alias cdH='cd /home/rulebend3r'
alias cdB='mount /dev/sda2 /boot && cd /boot'
alias umB='cd && umount /dev/sda2 && cd /home/rulebend3r'

## X Resources Stuff
alias eX='vim ~/.Xresources'
alias XTR='xrdb -merge ~/.Xresources'
alias XTD='xrdb -merge ~/st/.Xdefaults'

## Zsh Stuff
alias eZ='vim ~/.zshrc'
alias eOMZ='vim ~/.oh-my-zsh/themes/newpowerline.zsh-theme'
alias cdO='cd ~/.oh-my-zsh'
alias cdOT='cd ~/.oh-my-zsh/themes'
alias z='source ~/.zshrc'

## Vim Stuff
alias eV='vim ~/.vimrc'
alias e='vim'
alias se='sudo vim'
alias VCS='mupdf ~/.vim-cheat-sheet.pdf'
## Scripts
alias cdS='cd ~/Scripts'

## News and Music
alias eVIS='vim /home/rulebend3r/.config/vis/config'
alias CML='cmus-lyrics'
alias CM='cmus'
alias eMPD='sudo vim /etc/mpd.conf'
alias MPD='ncmpcpp'
alias MO='mocp -T transparent-background'

## Multimedia
alias irc='weechat'
#alias M='mpv'

## Net
alias NMC='nmcli device wifi connect RuleBend3r5 password DewPoint4070'
alias NML='nmcli device wifi list'
alias WW='wicd-curses'
alias NGE='nbwmon -i enp3s0'
alias NGW='nbwmon -i wlp2s0'
alias ping='ping -c 3 8.8.8.8'
alias SRX='python /usr/lib64/python3.6/site-packages/searx/webapp.py'

##Misc
alias calc='galculator'
alias SGP='sudo gparted'
alias SPC='sudo pcmanfm-qt'
alias ST='sudo thunar'
alias x='exit'
alias xset='xsetroot -cursor_name left_ptr'
alias SX='startx'
alias H='htop'
alias G='glances -t 1'
alias GT='gotop'
alias BP='bpytop'
alias SS='sudo su'
alias um='unimatrix -a -f -l k -s 90'
alias cm='cmatrix'
alias neo='neo --noglitch -S 3'
alias sw='telnet towel.blinkenlights.nl'

###########################################################
########################### ZSH ###########################
###########################################################

# enable vim mode on commmand line
bindkey -v

# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
#KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
#function zle-line-init zle-keymap-select {
#    RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
#    RPS2=$RPS1
#    zle reset-prompt
#}
#zle -N zle-line-init
#zle -N zle-keymap-select

# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-search-backward
bindkey -M vicmd '^s' history-incremental-search-backward

###########################################################
######################## FUNCTIONS ######################## 
###########################################################

# Awesome Logout
Logout() { echo 'awesome.restart()' | awesome-client ;}

###########################################################
######################### FFMPEG ########################## 
###########################################################

ffx_MONO="1"		# mono
ffx_DUAL="2"		# dual channel
ffx_HW="hw:1,0" 	# alsa; run 'cat /proc/asound/pcm' to change to the correct numbers
ffx_PULSE="pulse" 	# pulseaudio; might have to install pavucontrol to change volume
ffx_FPS="30"		# frame per seconds
#ffx_WIN_FULL="2560x1440"	# record fullscreen
ffx_WIN_FULL="2560x1440"	# record fullscreen
ffx_AUDIO="pcm_s16le"	# audio codec
ffx_VIDEO="libx264"	# video codec
ffx_PRESET="ultrafast"	# preset error? run 'x264 -h' replace with fast,superfast, slow ..etc
ffx_CRF="0"
ffx_THREADS="0"
ffx_THREAD_QUEUE_SIZE="512"
ffx_SCALE="scale=1920x1080"	# scale resolution, no black bars on sides of video on youtube
ffx_DIR="$HOME/Screencasts/"
ffx_OUTPUT=$ffx_DIR/$(date +%d-%b-%r)-screencast.mkv
ffx_OUTPUT_FINAL=~/Screencasts/screencast.mp4
# Note: -vf is optional delete if you want, -y is to overwrite existing file

## Concatinate (combine) two or more videos
#ffmpeg -i "concat:input1.avi|input2.avi..." -c copy output.avi

FF-full() { 
	ffmpeg \
	-thread_queue_size 2048 \
	-f alsa \
	-ac $ffx_MONO \
	-i $ffx_PULSE \
	-thread_queue_size 512 \
	-f x11grab \
	-r $ffx_FPS \
	-s $ffx_WIN_FULL \
	-i :0.0 \
	-acodec $ffx_AUDIO \
	-vcodec $ffx_VIDEO \
	-preset $ffx_PRESET \
	-crf $ffx_CRF \
	-threads $ffx_THREADS \
	-y $ffx_OUTPUT \
	$ffx_OUTPUT \
#	-vf $ffx_SCALE \
	}

# capture single window, use mouse cursor to select window you want to record
FF-window() { 
	ffx_INFO=$(xwininfo -frame)
    ffmpeg \
    -f alsa \
    -ac $ffx_MONO \
	-i $ffx_PULSE \
    -f x11grab \
    -r $ffx_FPS \
	-s $(echo $ffx_INFO \
    | grep -oEe 'geometry [0-9]+x[0-9]+'\
	| grep -oEe '[0-9]+x[0-9]+') \
	-i :0.0+$(echo $ffx_INFO | grep \
    -oEe 'Corners:\s+\+[0-9]+\+[0-9]+' \
	| grep -oEe '[0-9]+\+[0-9]+' | sed \
    -e 's/\+/,/' ) \
	-acodec $ffx_AUDIO \
    -vcodec $ffx_VIDEO \
    -preset $ffx_PRESET \
    -crf $ffx_CRF \
    -threads $ffx_THREADS \
	-y $ffx_OUTPUT \
            }

FF-convert() {
    ffmpeg \
	-i $ffx_OUTPUT \
	-ar 22050 \
	-ab 32k \
	-strict -2 \
	 $ffx_OUTPUT_FINAL
	}

Convert2mp4() {
    ffmpeg \
	-i $1 \
	-ar 22050 \
	-ab 32k \
	-strict -2 \
	 output.mpeg
	}



## Check Internal and External IPs ##
my-ip() {
        echo "--------------- Network Information ---------------"
	# newer system like arch
	ip addr | awk '/global/ {print $1,$2}' | cut -d\/ -f1
	ip addr | awk '/global/ {print $3,$4}'
	ip addr | awk '/ether/ {print $1,$2}'
	ip addr | awk '/scope link/ {print $1,$2}' | cut -d\/ -f1
	# older system like debian
    ifconfig | awk '/inet addr/ {print $1,$2}' | awk -F: '{print $1,$2}'
    ifconfig | awk '/Bcast/ {print $3}' | awk -F: '{print $1,$2}'
    ifconfig | awk '/inet addr/ {print $4}' | awk -F: '{print $1,$2}'
    ifconfig | awk '/HWaddr/ {print $4,$5}'
    ifconfig | awk '/Scope:Link/ {print $1,$3}' | cut -d\/ -f1
    echo Current IP $(curl -s http://checkip.dyndns.org/ | grep -o "[[:digit:].]\+")
    echo "---------------------------------------------------"
}

##########################################################
########################## MODS ########################## 
##########################################################

plugins=(git vi-mode themes) #archlinux zsh-completions color-command#
ZSH_DISABLE_COMPFIX='true'
source /home/rulebend3r/.oh-my-zsh/oh-my-zsh.sh

clear
#archey3
#neofetch
#/home/rulebend3r/Scripts/tiefighters.sh
#/home/rulebend3r/Scripts/starwars.sh
#/home/rulebend3r/Scripts/batman.sh
#/home/rulebend3r/Scripts/invaders1.sh
screenfetch -E
#screenfetch
#phoon | lolcat
#al-info
eval $(thefuck --alias)

#Gentoo#
source /usr//share/zsh/site-functions/zsh-syntax-highlighting.zsh

#Arch#
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Kali#
#source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Linux From Scratch#
#source /home/rulebend3r/Git-Packages/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh



PATH="/home/rulebend3r/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/rulebend3r/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/rulebend3r/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/rulebend3r/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/rulebend3r/perl5"; export PERL_MM_OPT;
