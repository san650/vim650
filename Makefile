# Default target
all:

tmp:
	mkdir -p tmp/backup tmp/swap

gitmodules:
	git submodule update --init

# ln
#   -f: Unlink ~/.vimrc if already exists
#   -s: Symbolic
install: tmp gitmodules
	ln -fs vimrc ~/.vimrc
	@echo
	@echo Done.

.PHONY: install tmp gitmodules
