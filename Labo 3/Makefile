all: tp correction
	echo "done"


tp: *.tex
	pdflatex -jobname="zener-carac-seule" zener-carac-seule.tex
	pdflatex -shell-escape -jobname="labo3" labo3.tex
	pdflatex -shell-escape -jobname="labo3" labo3.tex


correction: *.tex
	pdflatex -jobname="zener-carac-charge" zener-carac-charge.tex
	pdflatex -jobname="zener-vout-iout" zener-vout-iout.tex
	pdflatex -shell-escape -jobname=labo3_correction "\def\koriG{} \input{labo3.tex}"
	pdflatex -shell-escape -jobname=labo3_correction "\def\koriG{} \input{labo3.tex}"

clean:
	rm -f labo3.pdf labo3_correction.pdf zener-vout-iout.pdf zener-carac-charge.pdf zener-carac-seule.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc