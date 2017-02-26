CFLAGS += -Wall -Wextra -Werror
PREFIX ?= /usr/local

getconf: getconf.c

clean:
	rm -f getconf

install: getconf
	mkdir -p $(PREFIX)/share/man/man1 $(PREFIX)/bin
	install getconf $(PREFIX)/bin/getconf
	install getconf.1 $(PREFIX)/share/man/man1/getconf.1

uninstall:
	rm -f $(PREFIX)/bin/getconf $(PREFIX)/share/man/man1/getconf.1

.PHONY: clean install uninstall
