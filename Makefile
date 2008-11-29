DOC = $(shell ls *.tex | sed -e 's/[.]tex$$//')

pdf: $(DOC).pdf
dvi: $(DOC).dvi

%.dvi: %.tex
	latex $<
	latex $<
%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	@rm -vf *.{log,aux,dvi,pdf,nav,out,snm,toc}

.PHONY: clean dvi pdf

