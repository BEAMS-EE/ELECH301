all: labo 
	echo "done"


labo: *.tex
	pdflatex -shell-escape -jobname="labo2" labo2.tex
	pdflatex -shell-escape -jobname="labo2" labo2.tex

clean:
	rm -f labo2_correction.pdf rm labo2.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc