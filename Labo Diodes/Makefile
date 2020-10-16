all: tp correction
	echo "done"


tp: *.tex
	pdflatex -jobname="zener-carac-seule" zener-carac-seule.tex
	pdflatex -shell-escape -jobname="labo_diodes" labo_diodes.tex
	pdflatex -shell-escape -jobname="labo_diodes" labo_diodes.tex


correction: *.tex
	pdflatex -jobname="zener-carac-charge" zener-carac-charge.tex
	pdflatex -jobname="zener-vout-iout" zener-vout-iout.tex
	pdflatex -shell-escape -jobname=labo_diodes_correction "\def\koriG{} \input{labo_diodes.tex}"
	pdflatex -shell-escape -jobname=labo_diodes_correction "\def\koriG{} \input{labo_diodes.tex}"

clean:
	rm -f labo_diodes.pdf labo_diodes_correction.pdf zener-vout-iout.pdf zener-carac-charge.pdf zener-carac-seule.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc