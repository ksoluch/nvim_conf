alias vim='nvim -p'
alias gl='git log --oneline --graph --decorate --all'
alias gs='git status'
alias py='python3'
alias tmux='tmux -2'
alias text='rgrep -lR'
alias file='find . -type f -name '
alias vf='~/scripts/vgrep.sh'
alias kdiff='/mnt/c/Program\ Files/KDiff3/kdiff3.exe'
alias vs='rm -rf ~/.local/share/nvim/swap/*'
alias find='find -L'

function ta ()
{
  rm -rf tags
  ctags -R --languages=c,c++ --extra=+f
}

function eta ()
{
  rm -rf tags
  ctags -e --languages=c,c++ --extra=+f+q -R 
}

ulimit -c unlimited

if [[ ! $TERM =~ screen ]]; then
    tmux
fi

clear

export DISPLAY=:0
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
