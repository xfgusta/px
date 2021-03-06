PROG = px
CC = gcc
CFLAGS = -Wall -Wextra -pedantic -std=c99
LDFLAGS = -lX11
SRC = main.c

${PROG}: ${SRC}
	${CC} ${CFLAGS} ${SRC} ${LDFLAGS} -o ${PROG}

install:
	mkdir -p $(DESTDIR)/usr/bin
	install -m 0755 ${PROG} $(DESTDIR)/usr/bin/${PROG}

uninstall:
	rm -f $(DESTDIR)/usr/bin/${PROG}

clean:
	rm -f ${PROG}
