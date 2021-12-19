
set -o vi
export VISUAL=vim
export EDITOR="$VISUAL"

alias ll='ls -la'
alias lt='ls -lrt'

alias dus='du -sm * | sort -n'
alias vi='vim'
alias 7z='7za'

export GPG_TTY=/dev/pts/0

alias C='export LANG=C'

alias qb='/opt/bin/S89qbittorrent'
export qblog='/media/AiDisk_a1/qbittorrent/qbittorrent.log'
alias qblog='tail -n 20 /media/AiDisk_a1/qbittorrent/qbittorrent.log'

export sync='/media/AiDisk_a1/_sync_dir/cloud_sync/'

TZ='Asia/Shanghai'
