TARGET=resume

TEXSRC = resume.tex

PDF = $(TARGET).pdf
FIGURES = $(wildcard *.png)
BIBFILE = ./references.bib
.PHONY: pdf clean 

pdf: $(PDF)

$(PDF): $(TEXSRC) 
	pdflatex $(TARGET).tex

clean:
	rm -f *.ps *.pdf *.dvi *.log *.aux *.log

clean-all:
	rm -f *.ps *.pdf *.dvi *.log *.aux *.log *.blg *.bbl

