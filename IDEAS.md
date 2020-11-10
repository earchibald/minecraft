# Ideas to implement

## Baby Steps - take it easy, man
You always try to eat the dang pie

### What block is the player looking at?
- Look at rippy's stuff, look for youtube tutorials, look in player info^

### What is the distance to that block?

### What kind of block is it?

## Structures
### Moon Base
#### Central staircase model.
Ideally, this is non-exclusive of a central elevator of some kind or other, but for now, it should do. There should be a discrete concept of floors (one full revolution? one half? one and one half?), it must be well-lit, it should be relatively tough (so not wood?) and easy to navigate. I feel well-walled spirals are generally easiest to navigate. There should be clear sublevel floor numbers visible. I started this but had a hard time trying to do it manually with a structure block. Scripting would honestly have been easier for this one, but I can still do that, using the base of the stairs as a model (or thought model if it conflicts with the ideas above.)

#### Teleporter station
This should be something that can be stamped out, with a functional wrapper to which destination. As a bonus creating a new teleporter station should register it in a tag registry. tp_station, tp_station_LOCATION-ID, LOCATION-ID