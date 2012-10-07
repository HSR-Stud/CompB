# Makefile to create PDF documents from LaTeX-Files
# Needed software packages: pdflatex, rubber

all: CompB.pdf clean

%.pdf: %.tex
	rubber -m pdftex $<

clean:
	rm -f *.toc *.aux *.log *.out

cleanall:
	rm -f *.toc *.pdf *.aux *.log *.out

.PHONY: all clean cleanall

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
