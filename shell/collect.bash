#!/bin/bash

declare -a files=("$HOME/.vimrc" "$HOME/.bashrc" "$HOME/.bash_profile")
pwd=$(pwd)
parentdir=$(dirname "${pwd}")
targetdir="${parentdir}/tmp"
if [[  ! -e ${targetdir} ]]; then
		mkdir -p "${targetdir}"
fi
for file in "${files[@]}"
do
	if [[ -f "${file}" ]]; then
	cp "${file}" "${targetdir}"
	printf "copied %s\n" "${file}"
	else
  printf "%s is not found\n" "${file}"
	fi
done
