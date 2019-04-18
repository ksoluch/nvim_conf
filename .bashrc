alias vim='nvim'
alias gl='git log --oneline --graph --decorate --all'
alias gs='git status'
alias py='python3'

function ta ()
{
  rm -rf tags
  ctags -R --languages=c,c++
}

ulimit -c unlimited

cd
