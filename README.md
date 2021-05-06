#### This is a project for using a Raspberry Pi Zero W to measure light conditions on our balcony.

This project now has two version.
* Version 1 uses sensors that weren't really made for outdoor light levels.
* After the code became mostly workarounds for sad sensors we started with another sensor.
* Version 1 of the light meter used the following boards:
  * An Adafruit VEML6070 breakout board.
    * [Datasheet](https://cdn-learn.adafruit.com/assets/assets/000/032/482/original/veml6070.pdf)
    * [Adafruit Docs](https://learn.adafruit.com/adafruit-veml6070-uv-light-sensor-breakout?view=all)
  * An Adafruit TSL2561 breakout board.
    * [Datasheet](http://www.adafruit.com/datasheets/TSL2561.pdf)
    * [Adafruit Docs](https://learn.adafruit.com/tsl2561?view=all)

* Version 2 of the light meter uses the following board:
  * An Adafruit VEML7700 breakout board.
    * [Adafruit Docs](https://learn.adafruit.com/adafruit-veml7700?view=all)
    * [Datasheet](https://www.vishay.com/docs/84286/veml7700.pdf)
    * [Lib Docs](https://circuitpython.readthedocs.io/projects/veml7700/en/latest/api.html)

This code can be found in the following places:
* https://wx7.slackology.net/light_wx.html	<--page
* https://github.com/mcthoren/light_wx		<--code
* https://wx7.slackology.net/			<--code, data, plots, page


##### Many thanks to Adafruit for all the wonderful docs, boards, and examples.


<pre>
LICENSE				Lic
README.md			Readme
light				v1 python code to spit out data from our boards
light.gnuplot			v1 gnuplot file
light_kick			one of many workarounds to deal with weird bugs of a sun baked pi
light_sync			v1 script to copy everything to the webserver
light_v2			v2 python code to read out data from our board
light_wx.html			v1 website template
lux_hours.gnuplot		gnuplot file to graph total daily luminous exposure
lux_hours_calc			perl script to calculate daily luminous exposure
lux_hours_wrap			cron script to grab lux hours data and graph it
pickle_licht.html		v2 website template
pickles.light.gnuplot		v2 gnuplot file
pickles.sync			v2 shell script to copy everything to the webserver
</pre>
