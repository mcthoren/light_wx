set title "Light levels over the Last \\~48 Hours"
set xtics 7200 rotate by 30 offset -6.4, -2.2
set ytics
set mytics
set y2tics
set link y2
set key outside below
set xlabel "Time (UTC)\n" offset 0.0, -1.8
set xdata time;
set format x "%F\n%TZ"
set timefmt "%Y%m%d%H%M%S"
set grid xtics
set grid y2tics
set term svg size 1900, 700 font ",13" background '0xffffff'

set format y "%.0f"
set format y2 "%.0f"

dat_f='/home/ghz/light_wx/data/v2_light.dat.2-3_day'

set ylabel "Illuminance (lx)"
set y2label "Illuminance (lx)"
set output '/home/ghz/light_wx/plots/v2_light_lux.svg'
plot dat_f using 1:3 title 'Illuminance' with lines lw 2 linecolor rgb "#dddd00"

set ylabel "(°C)"
set y2label "(°C)"

set output '/home/ghz/repos/light_wx/plots/pitemp.svg'
plot dat_f using 1:7 title 'Pi Temp (°C)' with lines lw 2 linecolor rgb "#ff0000" smooth bezier
