# Makefile to create PDF documents from LaTeX-Files
# Needed software packages: pdflatex, scons

all: scons clean

scons:
	scons

clean:
	rm -f *.toc *.aux *.log *.out

cleanall:
	rm -f *.toc *.pdf *.aux *.log *.out

.PHONY: all scons clean cleanall

# vim: set tabstop=4 shiftwidth=4 noexpandtab:
