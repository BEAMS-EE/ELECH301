clear 
set logscale xy
set samples 10000
set grid xtics ytics mytics mxtics ls -1 lw 1, ls -1 lw 1  #y2tics
#set xzeroaxis ls -1 lt -1 lw 1 
#set xzeroaxis ls -1 lt -1 lw 0 
#set title "{/Symbol j}(t) pour 4 valeurs de V_{dc}"
set xlabel "{ f} (Hz)"
set style data lines
#set grid on
#set xgrid

#set y2label "Courant (A)"
#set y2tics in
set ytics in nomirror
set xtics in nomirror
#set x2tics in
set yrange [1e-2:25]
#set y2range [-360:360]
set xrange[1e-1:1e5]
#set x2range[1e1:1e5]
set mytics 10

#set xtics format '' #no values on axis
#set ytics format '' #no values on axis

set mxtics 10
set terminal x11
set ylabel "Gain"
#set log x2
#unset log y2
#set y2tics
#set autoscale  y
#set autoscale y2

w0=800*pi
#h(p)=10*p/((p/w0)**4+2*(p/w0)**2+1)
#h(p) = abs(p)<10 ? p:0 + abs(p)<100 && abs(p)>10 ? p**2/10:0 + abs(p)<1e4 && abs(p)>100 ? 1e3:0 + abs(p)<1e5 && abs(p)>1e4 ? p**-1*1e7:0 + abs(p)<1e6 && abs(p)>1e5 ? 1e-1*1e3:0 + abs(p)>1e6 ? p**-1*1e8:0 
#h(p)=(1e5*(p)*(p+1e4))/((p+1e2)**2*(p+1e6))

rb12=50e3
cin=180e-9
rd=220
gm=0.094
rch=3.3e3
cout=8.2e-6

h(p)=(rb12*p*cin)/(1+rb12*p*cin)*(-gm)*rd*rch*cout*p/(1+(rd+rch)*p*cout)

hin(p)=(rb12*p*cin)/(1+rb12*p*cin)
hout(p)=rch*cout*p/(1+(rd+rch)*p*cout)*(-gm)*rd

p12=2*pi*12.8

h12(p)=p/p12/(1+p/p12)

set key right bottom

plot abs(h(2*pi*x*{0,1})) lt 3 lw 8 t "|H(p)|f_c=20Hz",\
abs(-gm*0.9363*rd*h12(2*pi*x*{0,1})**2) lt 1 lw 8 t "|H_{comp}(p)|f_c=20Hz"
replot 20/sqrt(2) t "-3db"
#, 180/pi*arg(h(x*2*pi*{0,1}))
#abs(h12(2*pi*x*{0,1})) lt 2 lw 8 t "|H_{PH-ordre 1}(p)|f_c=12.7Hz",\
#abs(hin(2*pi*x*{0,1})) lt 4 lw 8 t "|H_{in}(p)|f_c=17.7Hz",\
#abs(hout(2*pi*x*{0,1})) lt 5 lw 8 t "|Av×H_{out}(p)|f_c=5.5Hz",\
set arrow from 20,0.01 to 20,20 nohead

#plot 0 notitle

#plot 6*sin(2*pi*50*x) ls -1 title "V_{ac}(t)"
set terminal pdf color  enhanced font "Helvetica, 30" size 10,6
set output "bode_corr.pdf"
replot

p20=2*pi*20

h20(p)=p/p20/(1+p/p20)

set key left top

set yrange [1e-1:2]
set xrange[1:100]

plot abs(h20(2*pi*x*{0,1})) lt 3 lw 8 t "|({p/p0})/({1+p/p0)}|f_c=20Hz",\
abs(h20(2*pi*x*{0,1})**2) lt 1 lw 8 t "|(({p/p0})/({1+p/p0}))²|f_c=31Hz"
replot 1/sqrt(2) t "-3db"
set output "bode_corr_20-31.pdf"
replot
#, 180/pi*arg(h(x*2*pi*{0,1}))
#abs(h12(2*pi*x*{0,1})) lt 2 lw 8 t "|H_{PH-ordre 1}(p)|f_c=12.7Hz",\
#abs(hin(2*pi*x*{0,1})) lt 4 lw 8 t "|H_{in}(p)|f_c=17.7Hz",\
#abs(hout(2*pi*x*{0,1})) lt 5 lw 8 t "|Av×H_{out}(p)|f_c=5.5Hz",\
#set arrow from 20,0.01 to 20,20 nohead

#plot 0 notitle

#plot 6*sin(2*pi*50*x) ls -1 title "V_{ac}(t)"
#set terminal pdf color  enhanced font "Helvetica, 30" size 10,6

#replot


#pause -1
#set output "bode2.ps"
#set term X11

unset logscale y
set xlabel "{/Symbol w} (rad/s)"
set ylabel "Phase (°)"
set style data lines
set ytics in nomirror
set xtics in nomirror
set yrange [-90:90]
#set xrange[1e1:1e7]
set mytics 1
set ytics 45
set grid xtics ytics mytics mxtics ls -1 lw 1, ls -1 lw 1  #y2tics
#set xzeroaxis ls -1 lt -1 lw 1 

#set xtics format '' #no values on axis
#set ytics format '' #no values on axis

set mxtics 10
set terminal x11
#set ylabel "Gain"


#replot
#plot 0 notitle ls -1

plot 180/pi*arg(h(x*{0,1})) lt 3 lw 8 t "Phase(H(p))"

set terminal pdf color  enhanced font "Helvetica, 30" size 10,5
set output "bode2_corr.pdf"
replot

#pause -1
#unset logscale y2
#plot 

#system "ps2pdf -dEPSFitPage -dEPSCrop -sPAPERSIZE=A4 bode.ps"
#system "ps2pdf -dEPSCrop bode2.ps"
print "done"


#set terminal postscript   enhanced font "Helvetica" 24
#set output "vac.ps"
#replot

#set terminal x11
#et ylabel "V_{R1}(t) (V)"
#plot  0 ls -1 lw 0 notitle  #"V_{R1}(t)"
#pause -1 
#190  
  #191  set xrange [1.1 : 1e4]
  #192  plot [1e-4:1e4] abs(h(p*2*pi*{0,1}))
  #193  plot [1e-4:1e4] abs(H(p*2*pi*{0,1}))
  #194  unset dummy p
  #195  unset p
  #196  unset set dummy
  #197  unset dummy
  #198  plot [1e-4:1e4] abs(h(x))
  #199  plot [1e-4:1e4] abs(h({0,1}*x*2*pi))
  #200  plot abs(h({0,1}*x*2*pi))
  #201  w0=800*pi
  #202  h(p)=10*p/((p/w0)^4+(p/w0)^2+1)
  #203  plot abs(h(x))
  #204  plot (h(x))
  #205  h(p)=10*p/((p/w0)**4+(p/w0)**2+1)
  #206  plot h(x)
  #207  set grid on
  #208  set grid yx
  #209  set xgrid
  #210  set grid xtics ytics mytics ls -1 lw 0, ls 0 lw 0 
  #211  plot [1e-4:1e4] abs(h(x*2*pi*{0,1}))

