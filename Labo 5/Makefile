all: labo correction
#	labo
#	correction
	echo "done"
	

labo: *.tex
	#cd Figures; ./crop.sh;cd ..
	#cd figures; make;cd ..
	#cd mesures; make;cd ..
	#cp ~/Documents/SIES2013add.bib .
	pdflatex -shell-escape -jobname="labo" labo_num.tex
	#bibtex SIES_2013_YAllard.aux
	#pdflatex labo_num.tex
	pdflatex -shell-escape -jobname="labo" labo_num.tex
	

correction: *.tex
	#cd Figures; ./crop.sh;cd ..
	#cd figures; make;cd ..
	#cd mesures; make;cd ..
	#cp ~/Documents/SIES2013add.bib .
	pdflatex -shell-escape -jobname=correction "\def\correction{} \input{labo_num.tex}"
	#bibtex SIES_2013_YAllard.aux
	#pdflatex labo_num.tex
	pdflatex -shell-escape -jobname=correction "\def\correction{} \input{labo_num.tex}"
	
clean:
	rm -f correction.pdf rm labo.pdf
	rm -f *.idx *.aux *.log *.nav *.out *.snm *.toc
	
