
me2pdf:
	docker run --rm -v $$PWD:/app -u "$$(id -u):$$(id -g)" jmaupetit/md2pdf --css styles.css WHOAMI.md WHOAMI.pdf

open: panme 
	xdg-open WHOAMI.pdf

panme:
	pandoc -t html --css styles.css \
		WHOAMI.md \
		-o WHOAMI.pdf \
		-s -tpdf --pdf-engine=weasyprint --metadata title="Juan Pablo Cisneros"

all: panme

PHONY: open panme
