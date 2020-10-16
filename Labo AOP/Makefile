all: labo 
	echo "done"


labo: *.tex
	pdflatex -shell-escape -jobname="labo_aop" labo_aop.tex
	pdflatex -shell-escape -jobname="labo_aop" labo_aop.tex

clean:
	rm -f labo_aop_correction.pdf rm labo_aop.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc