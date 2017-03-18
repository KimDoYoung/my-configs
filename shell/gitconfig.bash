#!/bin/bash
#
# gitconfig.bash
# git을 설치하고 처음 환경잡을 때 상용
#
declare -r GITHUB_USERNAME="KimDoYoung"
declare -r GITHUB_EMAIL="kdy987@gmail.com"

#
# global config setting
#
git config --global user.email $GITHUB_EMAIL
git config --global user.name $GITHUB_USERNAME
#global ignore file create
if [ ! -f $HOME/.gitignore ] ; then
	printf "*.log\n*.class" > $HOME/.gitignore
	printf "[$HOME/.gitignore] created\n"
fi
git config --global core.excludesfile "$HOME/.gitignore"

#
# global alias
#
git config --global alias.s 'status'
git config --global alias.co 'check out'
git config --global alias.cm 'commit'
#
#information
#
cat << NOTE
check global setting : git config --list 
git config --list | grep ^alias | cut -c7-
NOTE

exit 0
