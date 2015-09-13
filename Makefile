TEXFILES = $(wildcard *.tex)
PSFILES = $(wildcard *.eps) $(wildcard *.ps)
MACROFILES = slides.mac $(wildcard *.sty)

ALLFILES = $(TEXFILES) $(MACROFILES) $(PSFILES)

all: build

build:
	xelatex ndp.tex
	xelatex ndp.tex

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
	rm -f  main.ps main.pdf *.dvi *.log *.toc *.aux ndp*.pdf

dist:
	tar -cvvzf nlpjegyzet02.tar.gz $(ALLFILES) cserel.c Makefile
