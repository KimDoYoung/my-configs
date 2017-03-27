#!/usr/bin/env bash
#
# diff.bash
# 관리대상 파일들이 현재 로칼 시스템의 파일들과 내용이 같은지 틀린지 리스트한다
#
declare -a files=(
".vimrc"
".bashrc"
".bash_profile"
".bash_aliases"
".gitconfig"
".gitignore_global"
)
declare -i diff_count=0
pwd=$(pwd)
parent_dir=$(dirname "${pwd}")
for file in "${files[@]}"
do
  file_in_linux="${parent_dir}/linux/${file}"
  file_in_local="$HOME/${file}"
	if [[ ! -f "${file_in_local}" ]]; then
  	printf "${file_in_local} is not exist\n"
    diff_count=$((diff_count+1))
	else
    diff ${file_in_local} ${file_in_linux} > /dev/null
    if [[ ! $? ]] ; then
      printf "%s is not same\n" "${file_in_local}"
      diff_count=$((diff_count+1))
    fi
	fi
done
if [[ diff_count = 0 ]]; then
  exit 0
fi
exit 1
