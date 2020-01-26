alias vim='nvim'
alias tab='xargs nvim -p'
alias gl='git log --oneline --graph --decorate --all'
alias gs='git status'
alias py='python3'
alias tmux='tmux -2'
alias text='rgrep -lR'
alias file='find . -type f -name '
alias vf='~/scripts/vgrep.sh'
alias vd='/mnt/c/Program\ Files/KDiff3/kdiff3.exe'
alias vs='rm -rf ~/.local/share/nvim/swap/*'

function ta ()
{
  rm -rf tags
  ctags -R --languages=c,c++ --extra=+f
}

ulimit -c unlimited

cd

if [[ ! $TERM =~ screen ]]; then
    tmux
fi

clear
