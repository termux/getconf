CFLAGS += -Wall -Wextra -Werror

getconf: getconf.c

clean:
	rm -f getconf

install: getconf
	install getconf $(PREFIX)/bin/getconf

.PHONY: clean install
