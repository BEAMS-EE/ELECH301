..SUFFIXES: .plt .dia .pdf .fig
#objects = *.dia

GNUPLOT=$(shell echo *.plt)
DIA=$(shell echo *.dia)
PDF=$(DIA:%.dia=%.pdf)
FIG=$(DIA:%.dia=%.fig)
PLT=$(GNUPLOT:%.plt=%.pdf)
#SH=$(DIA:%.dia=%.sh)
#out=$(DIA:%.dia=%.out)

all: $(PLT) $(FIG) $(DIA) $(PDF)
#$(PDF) 

#.dia.pdf:
#all: $(objects)
#%.dia:
#%.pdf : %.fig
#dia --export=$@.pdf -t pdf $<
#pdfcrop $*.pdf
#	fig2pdf --nogv $<
#%.sh : %.sh %.dia
#	./cond_exec.sh $*.sh
%.pdf : %.plt
	gnuplot $<
	
%.fig : %.dia
	dia --export=$@ -t fig $<
#	fig2pdf --nogv $@

%.pdf : %.dia %.fig
	./cond_exec.sh $*.sh
	dia --export=$@ -t pdf $<
	pdfcrop $@
	fig2pdf --nogv $*.fig

#		        dia --export=$*.fig -t fig $*.dia
#			        fig2pdf --nogv $*.fig



clean:
	rm -rf *.pdf *.fig

#all: $(objects)
#	*.pdf
