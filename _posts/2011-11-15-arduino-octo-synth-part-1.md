---
layout: post
title: "Arduino Octo-Synth "
date: 2011-11-15 15:30
author: admin
postid: 605
comments: true
categories: [Software and Hardware]
tags: []
image: /uploads/2011/11/IMAG0770.jpg
---
[![]({{ site.baseurl }}/uploads/2011/11/IMAG0770-300x179.jpg "The Octo-Synth Version 0.1")]({{ site.baseurl }}/uploads/2011/11/IMAG0770.jpg)

[![]({{ site.baseurl }}/uploads/2011/11/IMAG0769-300x179.jpg "Octosynth 0.1 internals")]({{ site.baseurl }}/uploads/2011/11/IMAG0769.jpg)

  So, my daughter Rose was 18 months old, and I decided it was time for her first synthesizer. Apparently this is not normal, my wife didn't ever have a first synthesizer (mine was a Yamaha PSS-680), but personally I think everyone should have a cheap and nasty electronic musical instrument at some point in their life! I had a bit of a look round, and you can't really buy toddler friendly musical instruments that aren't rubbish. So I am currently trying to build / program one myself, based around an arduino micro-processor module I had hanging around. I had a bit of a requirements/specifications think first and came up with:

1.  It should respond quickly without any obvious delay.
2.  It should be able to play actual tunes and have an octave of in-tune notes.
3.  It should be able to play chords, and/or make horrible noises when you hit lots of notes at once. Kiddy keyboards where it just plays one note at a time are annoying.
4.  All the delicate electronic parts should be inside a box away from prying hands.
I made a quick cardboard and tin-foil prototype of an 8 key capacitative sensing keyboard which worked surprisingly well and is jolly clever - each key only requires one wire, which minimises gubbins in the circuit, and there are no exposed moving parts, which should hopefully reduce the amount of toddler damage. I'm thinking of using some kind of metal, something like a bolt through the box for the final version. As a prototype, I've made a synth in a Hazer Baba box and a bunch of carriage bolts. I've written the synth engine now - features:

1.  8 independent pitch and volume oscillators for nice chord sounds
2.  Touch sensing for chord input (up to 8 notes at once)
3.  Touch sensing for filter modulation and pitch bend
4.  Square, sine, sawtooth, triangle waves
5.  Resonant low pass filter
6.  All the hard bits written in assembler, so oscillators are fast (14 processor cycles per sample), clipping is handled nicely, and the touch sensing code is extremely accurate (it senses the touch capacitance using an unrolled  loop with 1 input read per cpu cycle). I think that the oscillator main loop is the minimum possible number of instructions per wave sample (see in the code for why I think this).
7.  There is time to run a little bit of other stuff on the arduino (there would be tons of time if it didn't have 8 oscillators constantly running - 1 or 2 oscillators take far less time.) Without the resonant filter it will happily play 16 independent oscillators at once.

Current version of the source code: [octosynth-source.]({{ site.baseurl }}/uploads/2011/11/octosynth-source.txt)

Some explanation of what the code is doing is available in my page about [direct digital synthesis]({{site.baseurl}}{% post_url 2015-01-21-arduino-music-using-direct-digital-synthesis %}).

Video of Rose playing with the first boxed version of the Octosynth
{% include youtube.html id="MacsDxfzOC0" %}

Video of pitch bend and filter modulation:
{% include youtube.html id="FXGdepulsPw" %}

Video of a first amplifier test version - I've since fixed some electronics bugs that were making the amplifier distort a lot, and it sounds a fair bit better, will do more videos soon. 
{% include youtube.html id="Qqrkyyrd6R4" %}

It is very hard to hear on the video as I'm just using a piezo buzzer while I wait for some headphones out plugs / an amplifier chip etc. in the post, but I've previously made a couple of quick test videos of the first (very far from toddler proof) setups. 
{% include youtube.html id="J1llJ7Xl0IA" %} 
{% include youtube.html id="qIZrwJCFl0o" %}

