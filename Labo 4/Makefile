all: tp
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="Labo4" Labo4.tex
	pdflatex -shell-escape -jobname="Labo4" Labo4.tex

clean:
	rm -f Labo4.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc