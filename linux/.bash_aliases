alias lh='ls -cd .*'
alias lsd='ls -ald */'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lsd='ls -al | grep ^d'

function exzip ()
{
  if [ -f "$1" ] ; then
    case "$1" in
      *.tar)                tar xf $1        ;;
      *.tar.bz2 | *.tbz2 )  tar xjvf $1        ;;
      *.tar.gz | *.tgz )    tar xzvf $1     ;;
      *.bz2)                bunzip2 $1       ;;
      *.rar)                unrar x $1     ;;
      *.gz)                 gunzip $1     ;;
      *.zip)                unzip $1     ;;
      *.Z)                  uncompress $1  ;;
      *.7z)                 7z x $1    ;;
      *)   echo ""${1}" cannot be extracted via extract()" ;;
     esac
   else
     echo ""${1}" is not a valid file"
   fi
}
log() {
  case $# in
  	0) CMD="cat -";;
  	*) CMD="echo $@";;
  esac
  $CMD | while read line ; do
  echo `date '+%Y-%m-%d %H:%M:%S'` $line
  done | tee -a $LOGFILE
}
