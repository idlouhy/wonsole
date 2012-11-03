all: build

clean:
	rm report.aux
	rm report.pdf

build:
	pdflatex report

	bibtex references.bib

	pdflatex report
	pdflatex report
	
