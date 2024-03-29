
set output "simple_alternance.pdf"
set terminal pdf colour enhanced dashed
set key box bottom left
#set key width -5

set style line 1 lw 3 pt 0 lt rgb "black"
set xzeroaxis ls 1 
set xtics axis offset 1,0
set yzeroaxis ls 1 
set ytics axis offset 0,0.5
set y2zeroaxis ls 1 
set y2tics axis  offset 0,0.5

set arrow 1 from 0,0 to 1.03*4e-2,0 filled
set arrow 2 from 0,0 to 0,15*1.08 filled
set arrow 3 from 4e-2,-15 to 4e-2,15*1.08 filled

unset border
set grid xtics ytics
set sample 1000
set xr [0:4e-2]
set x2r [-4e-2:0] #trick to get axis on the right og the graph
set y2r [-0.15*2:0.15*2]
set xlabel 't (s)'
set ylabel 'V (V)'
set y2label 'I (A)'

idp(x)=x<0 ? 0:1e6 #parfaite
idr(x)=x<vth ? 0:(x-vth)*0.2 #vth+R
idi(x)=x<vth ? 0:(x-vth)*1e6 #vth seul
id(x)=Is*(exp(x/(n*Vt))-1)

#idrs(x)=id(x)
set style data linespoints
set datafile separator ","
plot  "NewFile9.csv" using ($0*1e-6):($2) smooth bezier  with lines lw 5 lc 3 t "V_{ch}" ,\
"NewFile9.csv" using ($0*1e-6):(1.27*$3) smooth bezier  with lines lw 5 lc 3 t "V_{ac}" ,\
"NewFile8.csv" using ($0*1e-6):(1.27*$2) smooth bezier  with lines lw 5 lc 3 t "V_{filtrée}",\
 "NewFile9.csv" using ($0*1e-6):(1.27*$2/100) axes x1y2 smooth bezier  with lines lw 5 lc 1 t "I_{ch}" ,\
 "NewFile8.csv" using ($0*1e-6):(1.27*$2/100) axes x1y2 smooth bezier  with lines lw 5 lc 1 t "I_{filtrée}"