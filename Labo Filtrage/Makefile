all: tp
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="labo_filtrage" labo_filtrage.tex
	pdflatex -shell-escape -jobname="labo_filtrage" labo_filtrage.tex

clean:
	rm -f  labo_filtrage.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
