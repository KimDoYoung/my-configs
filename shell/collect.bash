#!/bin/bash

declare -a files=("$HOME/.vimrc" "$HOME/.bashrc" "$HOME/.bash_profile")
declare -r TARGET="$HOME/Documents/my-configs/tmp"
for file in "${files[@]}" 
do
	cp "${file}" "${TARGET}" 
	printf "%s\n" "${file}"
done
ls -a ${TARGET}
