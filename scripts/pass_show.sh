#!/usr/bin/env bash

# Passmenu script from zx2c4. (https://git.zx2c4.com/password-store/tree/contrib/dmenu/passmenu)

shopt -s nullglob globstar

typeit=0
if [[ $1 == "--type" ]]; then
	typeit=1
	shift
fi

prefix=${PASSWORD_STORE_DIR-~/.password-store}
password_files=( "$prefix"/**/*.gpg )
password_files=( "${password_files[@]#"$prefix"/}" )
password_files=( "${password_files[@]%.gpg}" )

password=$(printf '%s\n' "${password_files[@]}" | dmenu "$@")

[[ -n $password ]] || exit

if [[ $typeit -eq 0 ]]; then
#	pass show -c "$password" 2>/dev/null
pw=$(pass show "$password")
notify-send "Pass for $password" "$pw"
else
	pass show "$password" | { IFS= read -r pass; printf %s "$pass"; } |
		xdotool type --clearmodifiers --file -
		fi
