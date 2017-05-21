TARGET=sma-mem-part
include Makefile.include

comm:
	pdflatex sma-mem-part.tex;
	pdflatex sma-mem-part.tex;
	bibtex   sma-mem-part.aux;
	pdflatex sma-mem-part.tex
