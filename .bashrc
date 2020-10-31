#  _               _
# | |__   __ _ ___| |__  _ __ ___
# | '_ \ / _` / __| '_ \| '__/ __|
# | |_) | (_| \__ \ | | | | | (__
# |_.__/ \__,_|___/_| |_|_|  \___|
#

stty -ixon # Disable ctrl-s and ctrl-q.
shopt -s autocd #Allows you to cd into directory merely by typing the directory name.
HISTSIZE= HISTFILESIZE= # Infinite history.
set -o vi

# Setting Bash prompt
#   technical prompt
#export PS1="\[$(tput bold)\]\[$(tput setaf 1)\][\[$(tput setaf 3)\]\h\[$(tput setaf 2)\]|\[$(tput setaf 4)\]\W\[$(tput setaf 1)\]]$ \[$(tput sgr0)\]"
#   simple prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 3)\]\W\[$(tput setaf 1)\]> \[$(tput sgr0)\]"

export PS2="C> "

export GPG_TTY=$(tty)

# System Maintainence
alias mw="~/.config/mutt/mutt-wizard.sh"
alias muttwizard="~/.config/mutt/mutt-wizard.sh"
alias sdn="sudo shutdown now"
alias psref="gpg-connect-agent RELOADAGENT /bye" # Refresh gpg
alias pm="pulsemixer" # Audio mixer
alias dotgit="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME" # git for dotfiles

# Some aliases
alias SS="sudo systemctl"
alias v="vim"
alias sv="sudo vim"
alias vf="vifmrun"
alias svf="sudo vifm"
alias mkd="mkdir -pv"
alias ref="shortcuts.sh && source ~/.bashrc" # Refresh shortcuts manually and reload bashrc
alias fbg="feh --bg-fill"
alias pi="bash ~/.larbs/wizard/wizard.sh"
alias vera="veracrypt -t" 
alias vera-cmn="veracrypt -t --protect-hidden=no -k /home/carter/.keyfiles/common.keyfile /dev/sda3 /home/carter/cmn" 
#alias bri="sudo vim /sys/class/backlight/intel_backlight/brightness"

# Adding color
alias ls='ls -hN --color=auto --group-directories-first'
alias grep="grep --color=auto" # Color grep - highlight desired sequence.

# Internet
alias yt="youtube-dl --add-metadata -ic" # Download video link
alias yta="yt -x -f bestaudio/best" # Download only audio
alias YT="youtube-viewer"

#source ~/.shortcuts

# Add pywal colors
#(cat ~/.cache/wal/sequences &)
# Add pywal colors to tty
#source ~/.cache/wal/colors-tty.sh

export PATH=$PATH:$HOME/.local/bin/
#export PATH=$PATH:$HOME/scripts/

export QSYS_ROOTDIR="/home/carter/.local/bin/intelFPGA_lite/20.1/quartus/sopc_builder/bin"
