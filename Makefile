TEXFILES = $(wildcard *.tex)
PSFILES = $(wildcard *.eps) $(wildcard *.ps)
MACROFILES = slides.mac $(wildcard *.sty)

ALLFILES = $(TEXFILES) $(MACROFILES) $(PSFILES)

all: pdf

show: main.dvi
	xdvi + main.dvi

ps: main.ps

pdf: main.pdf

main.dvi: $(ALLFILES)
	latex main.tex
	latex main.tex

main.ps: main.dvi
	dvips -ta4 -f  main > main.ps

main.pdf: main.ps
	ps2pdf main.ps main.pdf

clean:
	rm -f  main.ps main.pdf main.dvi main.log main.toc *.aux

dist:
	tar -cvvzf nlpjegyzet02.tar.gz $(ALLFILES) cserel.c Makefile
