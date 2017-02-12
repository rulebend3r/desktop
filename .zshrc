#rulebend3r# Oh-My-Zsh
ZSH=/home/rulebend3r/.oh-my-zsh
ZSH_THEME="newpowerline"    #kardan agnoster af-magic bira clean candy gentoo terminalparty

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
export LANG="en_US.UTF-8"
export EDITOR="vim"
export PAGER="less"
export BROWSER="chromium"
export BROWSERCLI="w3m"
export MOVPLAY="mpv"
export PICVIEW="ristretto"
export SNDPLAY="mpv"
export TERMINAL="uxterm"
export PULSE_LATENCY_MSEC=60
export TERM="xterm-256color"

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
alias Shutdown='sudo shutdown -P now'
alias Suspend='sudo pm-suspend'

# Git
alias cdG='cd ~/desktop_desktop'
alias GitStatus='git status -u no'
alias GitCommit='git commit -m'

# Configs
alias Config='cd ~/.config'


# Fonts
alias Fonts='fc-cache -vf ~/fonts'
alias font-check='echo "\ue0b0 \u00b1 \ue0a0 \u27a6 \u2718 \u26a1 \u2699"'

## Conky
alias eC='vim ~/.conkyrc'
alias CK='conky'

## Packages
alias extract='dtrx'
alias gz='tar -xzf'
alias xz='tar -xJf'
alias bz='tar -xvjf'
alias bz2='tar -jxvf'

## Gentoo
alias GT='genlop -t'
alias EOS='emerge --oneshot portage'
alias RV='revdep-rebuild -v'
alias I='time emerge -av'
alias Uworld='time emerge --ask --verbose --update --newuse --deep @world'
alias Uworld-bdeps='time emerge --ask --newuse --update --deep --with-bdeps=y @world'
alias eS='sudo eix-sync'
alias EU='eix --update'
alias cdP='cd /etc/portage && sudo su'
alias cdU='cd /etc/portage/package.use && sudo su'
alias cdB='cd /etc/portage/package.mask && sudo su'
alias cdK='cd /etc/portage/package.accept_keywords && sudo su'
alias eM='sudo vim /etc/portage/make.conf'
## Portage

alias F='sudo tail -f /var/log/emerge-fetch.log'
alias E='sudo tail -f /var/log/emerge.log'

## Pacman
alias PS='sudo pacman -S'
alias PR='sudo pacman -R'
alias PL='tail -f /var/log/pacman.log'

## Debian based
alias SI='sudo apt-get install'
alias DP='tail -f /var/log/dpkg.log'

## Directories
alias ll='ls -l'
alias la='ls -ltra'
alias l='ls'
alias C='clear'
alias se='sudo vim'
alias e='vim'
alias home='cd ~'
alias k='exit'
alias te='trash-empty'
alias tl='trash-list'
alias del='trash-put'
alias tr='trash-rm'
alias lsTrash='ls ~/.local/share/Trash/files/'
alias cdTrash='cd ~/.local/share/Trash/files/'
alias lD='ls ~/Downloads'
alias D='cd ~/Downloads'

alias tsm-check='qutebrowser http://localhost:9091/transmission/web'
alias t='transmission-daemon && transmission-remote-cli'
alias kT='killall transmission-daemon'

## News and Music
alias MP='ncmpcpp'

## Multimedia
alias irc='cp ~/.weechat/irc.conf.bak ~/.weechat/irc.conf && weechat-curses'
alias M='mpv'

## Net
alias NM='sudo /etc/init.d/NetworkManager restart'

## Misc
alias SX='startx'
alias SS='sudo su'
alias H='htop'
alias G='glances'
alias X='xscreensaver &'
alias kX='killall xscreensaver'
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

# Transmission
T() { ~/Scripts/blocklist.sh && transmission-daemon && transmission-remote-cli ;}

# Pirate Bay search
tpb() { clear && figlet -c Pirate Bay && ~/Scripts/tpb.sh ;}

# Torrentz.eu search
torrentzeu() { clear && figlet -c Torrentz EU && ~/Scripts/torrentzeu.sh ;}

# YouTube Viewer
yt-viewer() { clear && figlet -c YouTube Viewer && youtube-viewer ;}

# No video / music only
yt-listen() { clear && figlet -c YouTube Listen && youtube-viewer -n $@ ;}

# Pianobar - ncurses Pandora Radio client
pandora-cli() { clear && figlet -c Pandora CLI && ~/.config/pianobar/pianobar_headless.sh ;}

##Check if websites are down
down4me() { curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g';}

###########################################################
###################### TRANSMISSION ####################### 
###########################################################

tsm-clearcompleted() {
        transmission-remote -l | grep 100% | grep Done | \
        awk '{print $1}' | xargs -n 1 -I % transmission-remote -t % -r ;}
tsm() { transmission-remote --list ;}
tsm-start() { transmission-daemon ;}
tsm-stop() { pkill tramsmission-daemon ;}
tsm-altspeedenable() { transmission-remote --alt-speed ;}
tsm-altspeeddisable() {	transmission-remote --no-alt-speed ;}
tsm-add() { transmission-remote --add "$1" ;}
tsm-askmorepeers() { transmission-remote -t"$1" --reannounce ;}
tsm-pause() { transmission-remote -t"$1" --stop ;}
tsm-start-torrent() { transmission-remote -t"$1" --start ;}
tsm-purge() { transmission-remote -t"$1" --remove-and-delete ;} # will delete data also
tsm-remove() { transmission-remote -t"$1" --remove ;} # does not delete data
tsm-info() { transmission-remote -t"$1" --info ;}
#tsm-speed() { while true;do clear; transmission-remote -t"$1" -i | grep Speed;sleep 1;done ;}

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

## Google Translate Functions ##
say() { 

	mplayer -user-agent Mozilla \
	"http://translate.google.com/translate_tts?ie=UTF-8&tl="$1"&q=$(echo "$@" \
	| cut -d ' ' -f2- | sed 's/ /\+/g')" > /dev/null 2>&1 ;}

say-translation() { 

	lang=$1
	trans=$(translate {=$lang} "$(echo "$@" | cut -d ' ' -f2- | sed 's/ /\+/g')" )	
	echo $trans
	mplayer -user-agent Mozilla \
	"http://translate.google.com/translate_tts?ie=UTF-8&tl=$lang&q=$trans" > /dev/null 2>&1 ;}

# MSNBC
iptv-MSNBC() { rtmpdump \
		-v \
		-r "rtmp://a.cdn.msnbclive.eu/edge" \
		-y "msnbc_live" \
		-W "http://msnbclive.eu/getswf.php?name=player.swf" \
		-p "http://www.rentadrone.tv/msnbc-live-rockinroosters/" \
		| mplayer - ;}

# Rueters
iptv-Rueters() {  rtmpdump \
		-r "rtmp://media9.lsops.net/reuters/" \
		-a "reuters/" -W "http://reuters.cdn.livestation.com/flash/player/5.7/player.swf" \
		-p "http://reuters.livestation.com/demo" \
		--live \
		-y "reuters_rlsweba_en_veryhigh.sdp" \
		| mplayer -;}

##########################################################
########################## MODS ########################## 
##########################################################

plugins=(git archlinux vi-mode themes zsh-completions color-command)
#source /home/rulebend3r/Git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/rulebend3r/.oh-my-zsh/oh-my-zsh.sh

clear
#neofetch
#/home/rulebend3r/Scripts/pacolor.sh
#/home/rulebend3r/Scripts/starwars.sh
#/home/rulebend3r/Scripts/batman.sh
#/home/rulebend3r/Scripts/invaders1.sh
screenfetch
