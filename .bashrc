export CSCOPE_DB="/home/$(whoami)/.cscope_db"

if [ ! -d $CSCOPE_DB ]; then
  mkdir $CSCOPE_DB
fi

function ta ()
{
  #clean older info
  rm -rf tags
  rm -rf $CSCOPE_DB/*
  #generate new info
  CURRENT=`pwd`
  echo "constructing cscope.files at $CURRENT"
  find "$CURRENT/" | egrep -i "\.(c|h|hpp|cpp|hxx|cxx|cc)$" > $CSCOPE_DB/cscope.files
  echo "constructing tags"
  ctags -R --languages=c,c++
  cd $CSCOPE_DB
  echo "building cscope database"
  cscope -b -q
  cd $CURRENT
}

alias gl='git log --oneline --graph --decorate --all'
alias gs='git status'
alias py='python3'

ulimit -c unlimited

cd
