set title "Daily luminous exposure"
set y2tics
set link y2
set key outside below
set xdata time;
set timefmt "%Y%m%d"
set xlabel "Time (UTC)\n" offset 0.0, -1.8;
set format x "%F"
set grid
set ylabel "H_v (Mlxs)"
set y2label "H_v (Mlxs)"
set xtics auto rotate by 30 offset -6.8, -2.2
set mxtics
set mytics
set xrange ["20230101":]
set yrange ["0":] noextend
set grid mxtics
set xtics out
set ytics out
set format y "%.0f"
set format y2 "%.0f"
set term svg size 1900, 700 font ",13" background '0xffffff'

dat_f='/home/ghz/light_wx/data/lux_hours.dat'
dat_f_45='/home/ghz/light_wx/data/lux_hours.45.dat'

set style fill solid noborder
set output '/home/ghz/light_wx/plots/lux_hours.svg'
# data is in lxh, multiply by 3600 to get lxs, and divide by a mil to get Mlxs
plot dat_f using 1:(($4 *3.6/1000)) t 'Luminous exposure (Mlxs)' with boxes lc rgb "#d9d900"

set title "Daily luminous exposure for the last 45 Days"
set xrange [*:] noextend
set style fill solid border rgb "#c0c000"
set output '/home/ghz/light_wx/plots/lux_hours_45.svg'
plot dat_f_45 using 1:(($4 *3.6/1000)) t 'Luminous exposure for the last 45 days (Mlxs)' with boxes lc rgb "#f0f000"
