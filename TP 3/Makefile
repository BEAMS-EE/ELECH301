all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="tp3" tp3.tex
	pdflatex -shell-escape -jobname="tp3" tp3.tex


correction: *.tex
	pdflatex -shell-escape -jobname=tp3_correction "\def\koriG{} \input{tp3.tex}"
	pdflatex -shell-escape -jobname=tp3_correction "\def\koriG{} \input{tp3.tex}"

clean:
	rm -f tp3_correction.pdf rm tp3.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
