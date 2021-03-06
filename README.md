#### This is a project for using a Raspberry Pi Zero W to measure light conditions on our balcony.


Reasons and firsts for this project:
* Learning more python3, and migrating my python2 stuff to python3 stuff.
* Learning circuit python.
* Practicing more github markdown.
* First use of a BSD/ISC sorta license. I usually use public domain, but the legality of PD is apparently not that well tested across many jurisdictions.
* And finally the point of all this is to actually measure something, namely light. To do this I'm using:
  * An Adafruit VEML6070 breakout board.
    * [Datasheet](https://cdn-learn.adafruit.com/assets/assets/000/032/482/original/veml6070.pdf)
    * [Adafruit Docs](https://learn.adafruit.com/adafruit-veml6070-uv-light-sensor-breakout?view=all)
  * An Adafruit TSL2561 breakout board.
    * [Datasheet](http://www.adafruit.com/datasheets/TSL2561.pdf)
    * [Adafruit Docs](https://learn.adafruit.com/tsl2561?view=all)

This code can be found in the following places:
* https://wx7.slackology.net/light_wx.html	<--page
* https://github.com/mcthoren/light_wx		<--code
* https://wx7.slackology.net/			<--code, data, plots, page


##### Many thanks to Adafruit for all the wonderful docs, boards, and examples.


to do:
- [x] lic
- [x] readme
- [x] init boards
- [x] build hardware
- [x] build web page
- [x] build weather proof enclosure that's transparent(ish) between about 300nm - 1000nm
- [x] fix whatever bug causes illuminance/bb data fall-out in bright weather. (silly for a light sensor)
- [x] fix whatever causes so many broken reads in bright light
- [x] fix whatever bug causes the lux sensor to not return any valid data on cold dark early mornings
- [x] _actually_ move from windowsill to balcony
- [x] autogain
- [x] scale IR/BB integration time automatically
- [x] scale UVA integration time automatically
- [x] hook up graphing
- [x] hook up syncing to web server
- [x] finish readme
- [x] add temp
- [x] graph temp
