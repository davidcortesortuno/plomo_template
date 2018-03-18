all:
	pdflatex phd_thesis.tex && \
	bibtex phd_thesis && \
	pdflatex phd_thesis.tex && \
	pdflatex phd_thesis.tex

all_nomen:
	pdflatex phd_thesis.tex && \
	makeindex phd_thesis.nlo -s nomencl.ist -o phd_thesis.nls && \
	bibtex phd_thesis && \
	pdflatex phd_thesis.tex && \
	pdflatex phd_thesis.tex

all_minted:
	pdflatex -shell-escape phd_thesis.tex && \
	bibtex phd_thesis && \
	pdflatex -shell-escape phd_thesis.tex && \
	pdflatex -shell-escape phd_thesis.tex
