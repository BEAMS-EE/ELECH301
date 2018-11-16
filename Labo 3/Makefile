all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="labo3" labo3.tex
	pdflatex -shell-escape -jobname="labo3" labo3.tex


correction: *.tex
	pdflatex -shell-escape -jobname=labo3_correction "\def\koriG{} \input{labo3.tex}"
	pdflatex -shell-escape -jobname=labo3_correction "\def\koriG{} \input{labo3.tex}"

clean:
	rm -f labo3.pdf labo3_correction.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc