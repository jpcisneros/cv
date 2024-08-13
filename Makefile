
me2pdf:
	docker run --rm -v $$PWD:/app -u "$$(id -u):$$(id -g)" jmaupetit/md2pdf --css styles.css WHOAMI.md WHOAMI.pdf

all: me2pdf

PHONY: me2pdf
