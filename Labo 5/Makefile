all: labo correction
	echo "done"
	

labo: *.tex
	pdflatex -shell-escape -jobname="elech301_labo5" labo_num.tex
	pdflatex -shell-escape -jobname="elech301_labo5" labo_num.tex
	

correction: *.tex
	pdflatex -shell-escape -jobname=elech301_labo5_correction "\def\correction{} \input{labo_num.tex}"
	pdflatex -shell-escape -jobname=elech301_labo5_correction "\def\correction{} \input{labo_num.tex}"
	
clean:
	rm -f elech301_labo5_correction.pdf rm elech301_labo5.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
	
