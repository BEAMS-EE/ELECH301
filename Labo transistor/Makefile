all: tp correction
	echo "done"


tp: *.tex
	pdflatex -shell-escape -jobname="Labo_trans" Labo_trans.tex
	pdflatex -shell-escape -jobname="Labo_trans" Labo_trans.tex

correction: *.tex
	pdflatex -shell-escape -jobname=Labo_trans_correction "\def\koriG{} \input{Labo_trans.tex}"
	pdflatex -shell-escape -jobname=Labo_trans_correction "\def\koriG{} \input{Labo_trans.tex}"

clean:
	rm -f Labo_trans.pdf Labo_trans_correction.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc *.fls *.fdb_latexmk