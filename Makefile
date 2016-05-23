DOCUMENT=ndp

build:
	xelatex -interaction=batchmode -shell-escape -8bit $(DOCUMENT); \
	bibtex $(DOCUMENT); \
	xelatex -interaction=batchmode -shell-escape -8bit $(DOCUMENT); \
	xelatex -interaction=batchmode -shell-escape -8bit $(DOCUMENT);

clean:
	rm -f *.pdf *.log *.html *.aux *.dvi *.thm *.lof *.lot *.fls *.out *.toc *.bbl *.blg *.synctex.gz* *.glg *.glo *.gls *.ist *.soc desktop.ini *.alg *.acn *.acr *.xdy
