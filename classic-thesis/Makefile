# Summary:      Simple makefile for LaTeX
# Author:       Juergen Hock <http://jurihock.de>
# Version:      2012/07/13
# Dependencies: make, xdg-utils, latexmk (texlive), rubber

# First, define the $MAINFILE to be compiled and then
# choose one of the backends (pdflatex or xelatex).
# All temporary files are stored at $TEMPDIR, but
# the generated PDF file is copied back into the working directory.
# Optional specify the $PATH to the LaTeX distribution.

# PATH := /usr/local/texlive/2012/bin/x86_64-linux:$(PATH)

MAINFILE = ClassicThesis
TEMPDIR  = ~Temp

default: pdflatex preview

pdflatex:
	-mkdir -v $(TEMPDIR)
	latexmk -quiet -f -pdf -outdir=$(TEMPDIR) $(MAINFILE).tex
	-cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

xelatex:
	-mkdir -v $(TEMPDIR)
	latexmk -quiet -f -pdf -xelatex -outdir=$(TEMPDIR) $(MAINFILE).tex
	-cp -v $(TEMPDIR)/$(MAINFILE).pdf $(MAINFILE).pdf

preview:
	-xdg-open $(MAINFILE).pdf &> /dev/null

log:
	-cd $(TEMPDIR) && rubber-info $(MAINFILE).log

clean:
	-rm -rf -v $(TEMPDIR)
