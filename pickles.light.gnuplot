set title "Light levels over the Last \\~48 Hours"
set xtics 7200 rotate by 30 offset -5.7, -2.2
set ytics
set mytics
set y2tics
set key outside below
set xlabel "Time (UTC)" offset 0.0, -1.6
set xdata time;
set format x "%F\n%TZ"
set timefmt "%Y%m%d%H%M%S"
set grid xtics
set grid y2tics
set term pngcairo size 1900, 512 font ",10"

set format y "%.0f"
set format y2 "%.0f"

dat_f='/home/ghz/light_wx/data/v2_light.dat.2-3_day'

set ylabel "Illuminance (lx)"
set y2label "Illuminance (lx)"
set output '/home/ghz/light_wx/plots/v2_light_lux.png'
plot dat_f using 1:3 title 'Illuminance' with lines lw 2 linecolor rgb "#dddd00"

set ylabel "(°C)"
set y2label "(°C)"

set output '/home/ghz/repos/light_wx/plots/pitemp.png'
plot dat_f using 1:7 title 'Pi Temp (°C)' with lines linecolor rgb "#ff0000" smooth bezier
