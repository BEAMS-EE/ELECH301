
set output "carac_zener.pdf"
set terminal pdf colour enhanced dashed
set key box top left
set key width -5

set style line 1 lw 3 pt 0 lt rgb "black"
set xzeroaxis ls 1 
set xtics axis offset 1,0
set yzeroaxis ls 1 
set ytics axis offset 0,0.5


set arrow 1 from 0,0 to 5,0 filled
set arrow 2 from 0,0 to 0,0.11/2 filled

unset border
set grid xtics ytics
set sample 1000
set xr [-5:5]
set yr [-0.01:0.11/2]
set xlabel 'V (V)'
set ylabel 'I (A)'
Is=1e-19 #A
Is2=1e-68
Vt=26e-3 #V
n=1
#R=10

vth=1
vz=-3.9

idp(x)=(x<0 ? 0:1e6) + (x<vz ? -1e6 :0)+0  #parfaite
idr(x)=(x<vth ? 0:(x-vth)*0.2)+(x<vz ? (x-vz)*0.2:0)+0 #vth+R
idi(x)=(x<vth ? 0:(x-vth)*1e6)+(x<vz ? (x-vz)*1e6:0) #vth seul
id(x)=(Is*(exp(x/(n*Vt))-1))-(Is2*(exp(-x/(n*Vt))-1))

#idrs(x)=id(x)

plot  id(x) t "I(V) (théorique)" lw 5 lc 3 ,  \
 idi(x) t "I(V) idéalisée avec Vth" lw 5 lc 3

#clear