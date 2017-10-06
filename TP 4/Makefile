all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="TP4" TP4.tex
	pdflatex -shell-escape -jobname="TP4" TP4.tex


correction: *.tex
	pdflatex -shell-escape -jobname=TP4_correction "\def\koriG{} \input{TP4.tex}"
	pdflatex -shell-escape -jobname=TP4_correction "\def\koriG{} \input{TP4.tex}"

clean:
	rm -f TP4_correction.pdf rm TP4.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
