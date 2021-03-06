reset

set terminal postscript enhanced color
#set terminal postscript color
#set terminal epslatex
#set terminal postscript
set output "HHG.ps"
#set term x11

#set size square

set style line 1 lt 1 lw 3
set style line 2 lt 3 lw 3
set style line 3 lt 6 lw 3

set title 'HHG Spectrum'

set logscale y

set xrange [0:1]
set yrange [1e-12:1e-3]
set xlabel '{/Symbol w} [a.u.]'
set ylabel 'HHG Spectrum'

plot 'HHG_Roland.dat' u (($1)/3):2 title 'HHG Roland' w l ls 1,\
     'HHG_Jose.dat' u (($1)/(40*0.85)):2 title 'HHG Jose' w l ls 2,\
     'HHG_Ulf.dat' u (($1)/0.15):2 title 'HHG Ulf' w l ls 3


set out


