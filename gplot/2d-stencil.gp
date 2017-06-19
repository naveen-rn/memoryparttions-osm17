set terminal postscript eps enhanced color font 'Helvetica,15'
set output '../graph/2d-stencil.eps'
set size 1, 1
set xtics rotate
set style data histogram
set style histogram cluster gap 1
set style fill solid border rgb "black"
set multiplot layout 1,1
set ylabel "MFLOPS/s"
set xlabel "NUmber of PEs"
set key left font ",15" spacing 1.5 at screen 0.2, screen 0.95
set logscale y 10

set origin 0, 0
set size 1, 1
plot '../data/2d-stencil.dat' u 2:xtic(1) ti "kind=DDR pgsize=4K", \
'' u 3:xtic(1) ti "kind=DDR pgsize=64M", \
'' u 4:xtic(1) ti "kind=MCDRAM pgsize=4K", \
'' u 4:xtic(1) ti "kind=MCDRAM pgsize=64M"

unset multiplot
