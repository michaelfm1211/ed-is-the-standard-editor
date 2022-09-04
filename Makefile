PREFIX=/usr/local

all: vi emacs

vi:
	ln -s /bin/ed vi

emacs:
	cp emacs.sh emacs
	chmod +x emacs

.PHONY: install
install:
	mkdir -p "${PREFIX}/bin" "${PREFIX}/share/man/man1/ed.1"
	cp vi "${PREFIX}/bin"
	chmod 755 "${PREFIX}/bin/vi"
	cp emacs "${PREFIX}/bin"
	chmod 755 "${PREFIX}/bin/emacs"
	cp ed.1 "${PREFIX}/share/man/man1/ed.1"
	chmod 644 "${PREFIX}/share/man/man1/ed.1"

.PHONY: clean
clean:
	rm vi emacs
