PREFIX=/usr/local

all: vi emacs

vi:
	ln -s /bin/ed vi

emacs:
	cp emacs.sh emacs
	chmod +x emacs

.PHONY: install
install:
	cp vi "${PREFIX}/bin"
	cp emacs "${PREFIX}/bin"

.PHONY: clean
clean:
	rm vi emacs
