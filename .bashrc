alias vim='nvim'
alias tab='xargs nvim -p'
alias gl='git log --oneline --graph --decorate --all'
alias gs='git status'
alias py='python3'
alias tmux='tmux -2'
alias text='rgrep -lR'
alias file='find . -type f -name '
alias vf='~/scripts/vgrep.sh'

function ta ()
{
  rm -rf tags
  ctags -R --languages=c,c++
}

ulimit -c unlimited

cd
