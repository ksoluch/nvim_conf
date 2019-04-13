export TERM="xterm-256color"
alias tmux='tmux -2'
alias gl='git log --oneline --graph --decorate --all'
alias gs='git status'
stty -ixon
ulimit -c unlimited

function ta ()
{
   #clean older info
   rm -rf tags 2>/dev/null
   rm -rf cscope.files 2>/dev/null
   rm -rf cscope.out 2>/dev/null
   #generate new info
   find $PWD | egrep -i "\.(c|h|hpp|cpp)$" > cscope.files
   ctags -R . *.c *.h *.cpp *.hpp --tag-relative=yes ./
}
