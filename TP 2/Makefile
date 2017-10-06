all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="tp2" tp2.tex
	pdflatex -shell-escape -jobname="tp2" tp2.tex


correction: *.tex
	pdflatex -shell-escape -jobname=tp2_correction "\def\koriG{} \input{tp2.tex}"
	pdflatex -shell-escape -jobname=tp2_correction "\def\koriG{} \input{tp2.tex}"

clean:
	rm -f tp2_correction.pdf rm tp2.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
