set xlabel "V_{GS}"
set ylabel "I_D"
set style data linespoint
set grid
set title "I_D=f(V_{GS})"
#plot [0:] "fdv301_id_vgs.dat" using ($1):($2/100) title "I_D", "fdv301_id_vgs12v.dat" using ($1/1000):($2/100/1000) title "I_D"

plot [1.5:4] [0:0.12] "bs170_id_vgs.dat" using ($1):($2)  title "I_D bs170", "fdv301_id_vgs12v.dat" using ($1/1000+1.1):($2/100/1000) title "I_D fdv301, V_{GS}+1.1V", "FDV301_id_vgs_doc.png.dat" using ($1):($2) title "I_D fdv301 doc, V_{GS}+1.1V"

pause -1
set term postscript enhanced color
set output "comp_bs_fdv.ps"
replot
set term x11