CFLAGS += -Wall -Wextra -Werror

getconf: getconf.c

clean:
	rm -f getconf

install: getconf
	install getconf $(PREFIX)/bin/getconf
	install getconf.1 $(PREFIX)/share/man/man1/getconf.1

.PHONY: clean install
