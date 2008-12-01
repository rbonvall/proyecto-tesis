DOC = $(shell ls *.tex | sed -e 's/[.]tex$$//')

dvi: $(DOC).dvi
pdf: $(DOC).pdf

%.dvi: %.tex
	latex $<
	latex $<
%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	@rm -vf *.{log,aux,dvi,pdf,nav,out,snm,toc}

.PHONY: clean dvi pdf

