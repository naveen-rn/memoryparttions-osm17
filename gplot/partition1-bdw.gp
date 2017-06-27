set terminal postscript eps enhanced color font 'Helvetica,15'
set output '../graph/partition1-bdw.eps'
set size 1, 1
set logscale y 10
set logscale x 2
set xrange[1:4096]
set format x '2^{%L}'
set grid
set ylabel "Latency in microseconds"
set xlabel "Block size in Bytes"
set key left font ",15" spacing 1.5 #at screen 0.5,screen 0.75

plot '../data/partition1-bdw.dat' \
        u 1:2 w linespoint lw 5  lc rgb "blue" ti "Growable Symmetric Heap", \
     '' u 1:3 w linespoint lw 5  lc rgb "red" ti "SMA-SYMMETRIC-SIZE", \
     '' u 1:4 w linespoint lw 5  lc rgb "green" ti "SMA-SYMMETRIC-PARTITION1", \
     '' u 1:5 w linespoint lw 5  lc rgb "black" ti "SMA-SYMMETRIC-PARTITION2"
