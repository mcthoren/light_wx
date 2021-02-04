set title "Daily Luminous Exposure"
set y2tics
set key outside below
set xdata time;
set timefmt "%Y%m%d"
set xlabel "Time (UTC)" offset 0.0, -1.6;
set format x "%F"
set grid
set ylabel "H_v (Mlxs)"
set y2label "H_v (Mlxs)"
set term png size 1900, 512 font ",10"
set xtics auto rotate by 30 offset -6.8, -2.2
set mxtics
set mytics
set grid mxtics
set grid mytics
set format y "%.0f"
set format y2 "%.0f"
set xrange ["20201018":]

dat_f='/home/ghz/light_wx/data/lux_hours.dat'

set style fill solid 0.90 border lt -1
set output '/home/ghz/light_wx/plots/lux_hours.png'
# data is in lxh, multiply by 3600 to get lxs, and divide by a mil to get Mlxs
plot dat_f using 1:(($4 *3.6/1000)) t 'Luminous Exposure (Mlxs)' with boxes lc rgb "#eeee00"
