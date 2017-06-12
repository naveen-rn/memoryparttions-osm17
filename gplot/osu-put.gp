set terminal postscript eps enhanced color font 'Helvetica,25'
set output '../graph/osu-put.eps'
set style fill solid 0.25
set style data boxplot
set style boxplot nooutliers
set boxwidth 0.3 absolute
set size 1, 1
set xrange[0:]
set yrange[0.8:1.4]
set grid
#set logscale y 10
set xtics rotate
set ylabel "Latency in microseconds"
set xlabel "Block size in Bytes"
set key left font ",20" spacing 1.5

plot '../data/osu-put.dat'                           \
        u ($1-0.25):3:2:6:5:xticlabels(8) w candlesticks lt -1    \
        lc rgb "red" ti "1-PARTITION" whiskerbars,                \
     '' u ($1+0.20):10:9:13:12 w candlesticks lt -1               \
        lc rgb "blue" ti "7-PARTITION" whiskerbars
