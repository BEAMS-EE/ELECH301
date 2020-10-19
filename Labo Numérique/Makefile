all: labo correction
	echo "done"
	

labo: *.tex
	pdflatex -shell-escape -jobname="labo_num" labo_num.tex
	pdflatex -shell-escape -jobname="labo_num" labo_num.tex
	

correction: *.tex
	pdflatex -shell-escape -jobname=labo_num_correction "\def\koriG{} \input{labo_num.tex}"
	pdflatex -shell-escape -jobname=labo_num_correction "\def\koriG{} \input{labo_num.tex}"
	
clean:
	rm -f labo_num_correction.pdf rm labo_num.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc *.fls *.fdb_latexmk
	
