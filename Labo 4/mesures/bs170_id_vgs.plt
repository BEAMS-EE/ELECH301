set xlabel "V_{GS}"
set ylabel "I_D"
set style data linespoint
set grid
set title "I_D=f(V_{GS})"
plot [0:] "bs170_id_vgs.dat" title "I_D"
pause -1

