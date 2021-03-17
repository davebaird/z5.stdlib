
# README_TEMPLATE := $(file < README.md.src)
# FUNCS := $(shell bin/z5.wrap z5stdlibtools get_all_public_func_list)

# README := $(shell "${$$README_TEMPLATE//<<FUNCLIST>>/$$FUNCS}")

# readmenew:
# 	echo $$README > README.md

default: update.omen


readme: # README.md.src
	bin/z5stdlib-funclist > README.md

HOST := $(shell hostname)

update.omen:
	[ ${HOST} = xomen ] || exit 5
	sudo rsync --update --recursive --perms --times --copy-links --delete --exclude=".git*" ./ /usr/local/src/z5.stdlib

