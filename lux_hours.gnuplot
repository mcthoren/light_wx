set title "Daily Luminous Exposure"
set y2tics
set link y2
set key outside below
set xdata time;
set timefmt "%Y%m%d"
set xlabel "Time (UTC)\n" offset 0.0, -2.8;
set format x "%F"
set grid
set ylabel "H_v (Mlxs)"
set y2label "H_v (Mlxs)"
set xtics auto rotate by 30 offset -6.8, -3.2
set mxtics
set mytics
set xrange ["20230101":]
set yrange ["0":] noextend
set grid mxtics
set xtics out
set ytics out
set format y "%.0f"
set format y2 "%.0f"
set term svg size 1900, 700 font ",12" background '0xffffff'

dat_f='/home/ghz/light_wx/data/lux_hours.dat'

set style fill solid noborder
set output '/home/ghz/light_wx/plots/lux_hours.svg'
# data is in lxh, multiply by 3600 to get lxs, and divide by a mil to get Mlxs
plot dat_f using 1:(($4 *3.6/1000)) t 'Luminous Exposure (Mlxs)' with boxes lc rgb "#d9d900"
