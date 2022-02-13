all: vi emacs

vi:
	ln -s /bin/ed vi

emacs:
	cp emacs.sh emacs
	chmod +x emacs

.PHONY: install
install:
	cp vi /usr/local/bin
	cp emacs /usr/local/bin

.PHONY: clean
clean:
	rm vi emacs
