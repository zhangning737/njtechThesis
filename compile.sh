#!/bin/sh
xelatex Thesis.tex
# makeindex v1.nlo -s nomencl.ist -o v1.nls
bibtex Thesis
xelatex Thesis.tex
xelatex Thesis.tex
