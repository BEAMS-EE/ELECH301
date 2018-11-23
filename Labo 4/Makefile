all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="Labo4" Labo4.tex
	pdflatex -shell-escape -jobname="Labo4" Labo4.tex

correction: *.tex
	# pdflatex -jobname="zener-vout-iout" zener-vout-iout.tex
	pdflatex -shell-escape -jobname=Labo4_correction "\def\koriG{} \input{Labo4.tex}"
	pdflatex -shell-escape -jobname=Labo4_correction "\def\koriG{} \input{Labo4.tex}"

clean:
	rm -f Labo4.pdf Labo4_correction.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc