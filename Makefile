# Default target
all:

sup:
	@echo
	@head -7 < README.md

tmp:
	mkdir -p tmp/backup tmp/swap

gitmodules:
	git submodule update --init

# ln
#   -f: Unlink ~/.vimrc if already exists
#   -s: Symbolic
install: sup tmp gitmodules
	ln -fs `pwd`/vimrc ~/.vimrc
	@echo
	@echo Done.

.PHONY: install tmp gitmodules
