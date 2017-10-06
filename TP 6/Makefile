all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="tp6" tp6.tex
	pdflatex -shell-escape -jobname="tp6" tp6.tex


correction: *.tex
	pdflatex -shell-escape -jobname=tp6_correction "\def\koriG{} \input{tp6.tex}"
	pdflatex -shell-escape -jobname=tp6_correction "\def\koriG{} \input{tp6.tex}"

clean:
	rm -f tp6_correction.pdf rm tp6.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
