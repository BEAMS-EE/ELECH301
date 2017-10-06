all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="TP5" TP5.tex
	pdflatex -shell-escape -jobname="TP5" TP5.tex


correction: *.tex
	pdflatex -shell-escape -jobname=tp5_correction "\def\koriG{} \input{TP5.tex}"
	pdflatex -shell-escape -jobname=tp5_correction "\def\koriG{} \input{TP5.tex}"

clean:
	rm -f TP5_correction.pdf rm TP5.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
