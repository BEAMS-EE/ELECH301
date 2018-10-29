all: tp
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="labo1" labo1.tex
	pdflatex -shell-escape -jobname="labo1" labo1.tex

clean:
	rm -f  labo1.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
