
set output "carac.pdf"
set terminal pdf colour enhanced dashed
set key box top left
set key width -5

set style line 1 lw 3 pt 0 lt rgb "black"
set xzeroaxis ls 1 
set xtics axis offset 1,0
set yzeroaxis ls 1 
set ytics axis offset 0,0.5


set arrow 1 from 0,0 to 5,0 filled
set arrow 2 from 0,0 to 0,0.11/4 filled

unset border
set grid xtics ytics
set sample 1000
set xr [-5:5]
set yr [-0.01/2:0.11/4]
set xlabel 'V (V)'
set ylabel 'I (A)'
Is=4e-11 #A
Vt=26e-3 #V
n=4
#R=10

vth=2

idp(x)=x<0 ? 0:1e6 #parfaite
idr(x)=x<vth ? 0:(x-vth)*0.2 #vth+R
idi(x)=x<vth ? 0:(x-vth)*1e6 #vth seul
id(x)=Is*(exp(x/(n*Vt))-1)

#idrs(x)=id(x)

plot  id(x) t "I(V) (théorique)" lw 5 lc 3 ,  \
 idi(x) t "I(V) idéalisée avec Vth" lw 5 lc 3

#clear