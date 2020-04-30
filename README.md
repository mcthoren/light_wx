This is a project for using a Raspberry Pi Zero W to measure light conditions on our balcony.


Reasons and firsts for this project:
* Learning more python3, and migrating my python2 stuff to python3 stuff.
* Learning circuit python.
* First use of a BSD/ISC sorta lic. I usually use public domain, but the legality of pd is apparently just not that clear across many jurisdictions, whereas bsd/isc has been better tested.
* And finally the point of all this is to actually measure something, namely light. To do this i'm using:
  * An adafruit Veml 6070 breakout board.
    * [Datasheet](https://cdn-learn.adafruit.com/assets/assets/000/032/482/original/veml6070.pdf)
    * [Adafruit Docs](https://learn.adafruit.com/adafruit-veml6070-uv-light-sensor-breakout?view=all)
  * An Adafruit TSL 2561 breakout board.
    * [Datasheet](http://www.adafruit.com/datasheets/TSL2561.pdf)
    * [Adafruit Docs](https://learn.adafruit.com/tsl2561?view=all)

* Thanks again to Adafruit, for all the wonderful docs, boards, and code.


todo:
- [x] Lic
- [x] Readme
- [ ] init boards
- [ ] autogain
- [ ] finish readme
