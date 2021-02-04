set title "Daily Light Levels"
set y2tics
set key outside below
set xdata time;
set timefmt "%Y%m%d"
set xlabel "Time (UTC)" offset 0.0, -1.6;
set format x "%F"
set grid
set ylabel "Lux Hours (lxh)"
set y2label "Lux Hours (lxh)"
set term png size 1900, 512 font ",10"
set xtics auto rotate by 30 offset -6.8, -2.2
set mxtics
set mytics
set grid mxtics
set grid mytics
set format y "%.1f"
set format y2 "%.1f"
set xrange ["20200503":]

dat_f='/home/ghz/light_wx/data/lux_hours.dat'

# set boxwidth 0.90 relative
set style fill solid 0.50 border lt -1
set output '/home/ghz/light_wx/plots/lux_hours.png'
plot dat_f using 1:4 t 'Lux Hours (lxh)' with boxes lc rgb "#bbbb00"
