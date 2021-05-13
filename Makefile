CFLAGS += -Wall -Wextra -Werror
PREFIX ?= /usr/local

getconf: getconf.c

clean:
	rm -f getconf

install: getconf
	mkdir -p $(DESTDIR)$(PREFIX)/share/man/man1 $(DESTDIR)$(PREFIX)/bin
	install -m700 getconf $(DESTDIR)$(PREFIX)/bin/
	install -m600 getconf.1 $(DESTDIR)$(PREFIX)/share/man/man1/

uninstall:
	rm -f $(PREFIX)/bin/getconf $(PREFIX)/share/man/man1/getconf.1

.PHONY: clean install uninstall
