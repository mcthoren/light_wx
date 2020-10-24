set title "Light levels over the Last \\~48 Hours"
set xtics 7200 rotate by 30 offset -5.7, -2.2
set ytics nomirror
set y2tics
set key outside below
set xlabel "Time (UTC)" offset 0.0, -1.6
set xdata time;
set format x "%F\n%TZ"
set timefmt "%Y%m%d%H%M%S"
set grid
set term pngcairo size 1900, 512 font ",10"

set format y "%.0f"
set format y2 "%.0f"

dat_f='/home/ghz/light_wx/data/2-3_day.power'

set ylabel "Illuminance (lx)"
set y2label "Illuminance (lx)"
set output '/home/ghz/light_wx/plots/light_lux.png'
plot dat_f using 1:5 title 'Illuminance' with lines lw 2 linecolor rgb "#dddd00"

set ylabel "Illuminance (counts)"
set y2label "Illuminance (counts)"

set output '/home/ghz/light_wx/plots/light_uva.png'
plot dat_f using 1:5 title 'UVA Illuminance' with lines lw 2 linecolor rgb "#0000ff"

set output '/home/ghz/light_wx/plots/light_bb.png'
plot dat_f using 1:7 title 'Broad Band Illuminance' with lines lw 2 linecolor rgb "#00aa00"

set output '/home/ghz/light_wx/plots/light_ir.png'
plot dat_f using 1:9 title 'IR Illuminance' with lines lw 2 linecolor rgb "#ff0000"

set ylabel "Temp (°C)"
set y2label "Temp (°C)"
set title "Pi Temp over the Last \\~48 Hours"
set output '/home/ghz/light_wx/plots/light_temp.png'
plot dat_f using 1:13 title 'Pi Temp' with lines lw 2 linecolor rgb "#bb00ff"

set title "Light levels over the Last \\~48 Hours"

set autoscale y
set autoscale y2

set ylabel "UVA Illuminance (counts)"
set y2label "BB/IR Illuminance (counts)"

set output '/home/ghz/light_wx/plots/light_smooth.png'
plot dat_f using 1:5 axes x1y1 title 'UVA' with lines linecolor rgb "#0000ff", \
dat_f using 1:7 axes x1y2 title 'BB' with lines linecolor rgb "#00ff00", \
dat_f using 1:9 axes x1y2 title 'IR' with lines linecolor rgb "#ff0000"
