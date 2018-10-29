all: tp
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="labo3" labo3.tex
	pdflatex -shell-escape -jobname="labo3" labo3.tex

clean:
	rm -f labo3.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc