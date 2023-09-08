[ -w "/home/void/.bash_logout" ] && \
  rm "/home/void/.bash_logout"

[ -w "/home/void/.bash_profile" ] && \
  rm "/home/void/.bash_profile"

[ -w "/home/void/.bashrc" ] && \
  rm "/home/void/.bashrc"

[ -w "/home/void/.pki" ] && \
  rm -rf "/home/void/.pki"

[ -s "/home/void/.lyrics" ] && \
  rm -rf "/home/void/.lyrics"

[ -w "/home/void/.gmrun_history" ] && \
  rm "/home/void/.gmrun_history"

[ -w "/home/void/.gnuplot_history" ] && \
  rm "/home/void/.gnuplot_history"

[ -w "/home/void/.python_history" ] && \
  rm "/home/void/.python_history"

[ -w "/home/void/neovide_backtraces.log" ] &&
  rm "/home/void/neovide_backtraces.log"

[ -w "/home/void/.bash_history" ] && \
  rm "/home/void/.bash_history"

[ -s "/home/void/.avidemux6" ] && \
  rm -rf "/home/void/.avidemux6"

#EDIDTOR="swallow neovide --multigrid --nofork"
EDITOR="nvim"

alias bat="bat -n -S --color always --italic-text always -P --theme moonfly"
alias home="cd $HOME/casa"
alias zathura="zathura --fork"
alias ccz="$EDITOR $XDG_CONFIG_HOME/zsh/.zshrc"
alias cczenv="$EDITOR $XDG_CONFIG_HOME/zsh/.zshenv"
alias ccd="$EDITOR $HOME/casa/Documents/git/my-dwl/dwl/config.h"
alias ccds="$EDITOR $HOME/casa/Documents/git/my-dwl/dwlstart_20230602.dash"
alias cct="$EDITOR $HOME/casa/Documents/git/my-st/st/config.h"
alias radio="mpv --no-video"
alias w3m="w3m -v"
alias fucking="doas"
alias ytd="yt-dlp --config $HOME/.config/yt-dlp_config"
alias xrs="xmonad --recompile && xmonad --restart"
alias spotd="spotifyd -B 320 -d Toilet -u 'dsciencekid' -P 'pass show spotify'"
alias ex="exa --icons -a --group-directories-first"
alias grep="grep --color=auto"
alias dv="doas $EDIDTOR"
alias v="$EDITOR"
alias FUCKING="doas"
alias gc="gix clone"
alias wiki="$EDITOR -- -c VimwikiIndex"
alias rg="rg -i"
alias Search="xbps-query -Rs"
alias Install="doas xbps-install -S"
alias Update="doas xbps-install -Su"
alias Remove="doas xbps-remove -Rf"
alias List="xbps-query -f"
alias CleanCache="xbps-remove -O"
alias CleanOrphans="doas xbps-remove -of"
alias pomodoro="pomo -l 30 -p 60 -s 10"
alias irssi=irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi
alias wget=wget --hsts-file="$XDG_DATA_HOME"/wget-hsts
alias neovide="WINIT_UNIX_BACKEND=x11 neovide"
alias scrot="maim -o -s | tee /tmp/image.png | xclip -sel clip -t image/png"

cco() {
	full_path="$(fd -t f . $HOME/.config -d 2 | fzf)"
	file="$(coreutils basename "$file_full")"
	path_to_dir="${full_path%/*}"
	cd "$path_to_dir" && $EDITOR $file
}

pd() {
	rdbm set last-dir "$(pwd)"
}

gd() {
	cd "$(rdbm get last-dir)"
}

new() {
  DATE="$(date +%Y%m%d)"
  EXT=${@#*.}
  NAME=${@%%.*}
  FULL_NAME="${NAME}_${DATE}.${EXT}"
  touch "$FULL_NAME"
  $EDITOR "$FULL_NAME"
}

cl() {
    cd "$@" && exa -a --icons --group-directories-first
}

mkcd() {
    mkdir -p "$@" && cd "$@" || exit
}

vv() {
    swallow neovide --multigrid --nofork "$@"
}

mktex() {
    cp "$HOME/Documents/LaTex/template.tex" "$(pwd)/$*.tex"
}

mdf() {
    pandoc "$@" -o "$*.pdf" --pdf-engine=xelatex
}


PROMPT="
%F{black} ╭── %f%F{blue}%1~%f
%F{black} ╰ %f%F{magenta}λ.%f"
RPROMPT="%F{black}%T%f"

# coreutils
#alias [="coreutils ["
if command -v coreutils &> /dev/null
then
	alias b2sum="coreutils b2sum"
	alias b3sum="coreutils b3sum"
	alias base64="coreutils base64"
	alias basename="coreutils basename"
	alias basenc="coreutils basenc"
	alias cat="coreutils cat"
	alias cksum="coreutils cksum"
	alias comm="coreutils comm"
	alias cp="coreutils cp"
	alias csplit="coreutils csplit"
	alias cut="coreutils cut"
	alias date="coreutils date"
	alias dd="coreutils dd"
	alias df="coreutils df"
	alias dir="coreutils dir"
	alias dircolors="coreutils dircolors"
	alias dirname="coreutils dirname"
	alias du="coreutils du"
	alias echo="coreutils echo"
	alias env="coreutils env"
	alias expand="coreutils expand"
	alias expr="coreutils expr"
	alias factor="coreutils factor"
	alias false="coreutils false"
	alias fmt="coreutils fmt"
	alias fold="coreutils fold"
	alias hashsum="coreutils hashsum"
	alias head="coreutils head"
	alias join="coreutils join"
	alias link="coreutils link"
	alias ln="coreutils ln"
	alias ls="coreutils ls --color=always"
	alias md5sum="coreutils md5sum"
	alias mkdir="coreutils mkdir"
	alias mktemp="coreutils mktemp"
	alias more="coreutils more"
	alias mv="coreutils mv"
	alias nl="coreutils nl"
	alias numfmt="coreutils numfmt"
	alias od="coreutils od"
	alias paste="coreutils paste"
	alias pr="coreutils pr"
	alias printenv="coreutils printenv"
	alias printf="coreutils printf"
	alias ptx="coreutils ptx"
	alias pwd="coreutils pwd"
	alias readlink="coreutils readlink"
	alias realpath="coreutils realpath"
	alias rm="coreutils rm"
	alias rmdir="coreutils rmdir"
	alias seq="coreutils seq"
	alias sha1sum="coreutils sha1sum"
	alias sha224sum="coreutils sha224sum"
	alias sha256sum="coreutils sha256sum"
	alias sha3-224sum="coreutils sha3-224sum"
	alias sha3-256sum="coreutils sha3-256sum"
	alias sha3-384sum="coreutils sha3-384sum"
	alias sha3-512sum="coreutils sha3-512sum"
	alias sha384sum="coreutils sha384sum"
	alias sha3sum="coreutils sha3sum"
	alias sha512sum="coreutils sha512sum"
	alias shake128sum="coreutils shake128sum"
	alias shake256sum="coreutils shake256sum"
	alias shred="coreutils shred"
	alias shuf="coreutils shuf"
	alias sleep="coreutils sleep"
	alias sort="coreutils sort"
	alias split="coreutils split"
	alias sum="coreutils sum"
	alias tac="coreutils tac"
	alias tail="coreutils tail"
	alias tee="coreutils tee"
	alias test="coreutils test"
	alias touch="coreutils touch"
	alias tr="coreutils tr"
	alias true="coreutils true"
	alias truncate="coreutils truncate"
	alias tsort="coreutils tsort"
	alias unexpand="coreutils unexpand"
	alias uniq="coreutils uniq"
	alias unlink="coreutils unlink"
	alias vdir="coreutils vdir"
	alias wc="coreutils wc"
	alias yes="coreutils yes"
fi

#eval "$(starship init zsh)"
