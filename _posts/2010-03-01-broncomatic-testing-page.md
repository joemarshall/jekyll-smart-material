---
layout: post
title: "Introducing the Broncomatic"
date: 2010-03-01 15:53
author: admin
postid: 373
comments: true
categories: [Rides]
tags: []
image: /uploads/2010/03/broncomatic.jpg
---
<div class="mceTemp">As part of the work with the Bucking Bronco, I have been automating the control of it, so that we can make computer controlled adaptive bronco rides.</div>
<div class="mceTemp">Rather than delve into the Bronco electronics, I have attached a wooden faceplate with a set of servos to the control panel that is used when manually operating the Bronco. There are several reasons behind this choice:</div>

1.  I wanted the computer's control of the Bronco to be very obvious, so spectators could see how it is controlling the ride as well as the effect on the ride machinery itself.
2.  Aesthetically there is something very attractive about the Heath   Robinson nature of the BroncoMatic - a big part of the beauty of the   Bronco is the large machinery that runs it - I wanted to keep that   aesthetic in the computer control.
3.  No need to mess with high voltage electronics - the Bronco runs at  12  amps and 240v, enough to be quite dangerous to play with.
4.  We keep the Bronco control box in good condition, so it still  works for manual control
<div class="mceTemp">Some pictures and video of the early development of the Broncomatic are below. Obviously this is very early development - perhaps later versions may involve less gaffa tape, more accurately cut wood and something other than zip-ties, string and lego holding it all together!</div>

[![Broncomatic - first joystick test]({{ site.baseurl }}/uploads/2010/03/broncomatic-300x225.jpg "Broncomatic joystick controller")]({{ site.baseurl }}/uploads/2010/03/broncomatic.jpg)

[First joystick test (quicktime)]({{ site.baseurl }}/uploads/2010/03/broncomatic.mov)

[![Broncomatic with speed controls]({{ site.baseurl }}/uploads/2010/03/broncomatic2-300x225.jpg "Broncomatic with speed controls")]({{ site.baseurl }}/uploads/2010/03/broncomatic2.jpg)

[First test of Broncomatic with speed controls (quicktime)]({{ site.baseurl }}/uploads/2010/03/broncomatic2.mov)

[![Broncomatic integator software]({{ site.baseurl }}/uploads/2010/03/broncomaticsoftware.jpg "Broncomatic integator software")]({{ site.baseurl }}/uploads/2010/03/broncomaticsoftware.jpg)
<div class="mceTemp">The Broncomatic Integrator allows the Broncomatic to be connected to the [MindMedia Nexus](http://www.mindmedia.nl/english/index.php) sensors (it is pretty easy to add new sources of sensor data, the Nexus just happened to be to hand when I was doing this test). It makes it very quick to write different mappings between sensor inputs and how the Bronco moves.</div>
<div class="mceTemp">Videos of a couple of mappings are shown below (these each took a couple of minutes to write in the Integrator)</div>

1.  Speeds up when you breathe in, slows down when you breathe out Video, complete with heavy breathing ([video complete with heavy breathing - quicktime]({{ site.baseurl }}/uploads/2010/03/broncomatic-breathe1.mov)).
2.  Goes one way on breathing in, the other on breathing out ([another heavy breathing video - quicktime ]({{ site.baseurl }}/uploads/2010/03/broncomatic-breathe2.mov))

[![Bronco souvenir sticker]({{ site.baseurl }}/uploads/2010/03/broncosticker.jpg "Bronco souvenir sticker")]({{ site.baseurl }}/uploads/2010/03/broncosticker.jpg)
<div class="mceTemp">I found a sticker printer hanging around in the lab, and made up a little sticker to give to people when they have ridden the ride. The number relates to the total volume of air that someone has breathed in during the ride. The little graph at the bottom is a trace of the last 20 seconds of their breathing.</div>
[![Duncan on the finish line camera]({{ site.baseurl }}/uploads/2010/03/duncantest3-300x192.jpg "Duncan on the finish line camera")]({{ site.baseurl }}/uploads/2010/03/duncantest3.jpg)
<div class="mceTemp">Duncan & I built a 'finish line camera', which records video from a single line over time, showing a trace of the bronco movements - giving some quite neat results.</div>
<div class="mceTemp"></div>
<div class="mceTemp">**First Experiments**</div>
<div class="mceTemp">We have now run a public experiment with the Broncomatic, a [first description of this experiment]({% post_url 2010-03-31-broncomatic-experimentalism %}) is available. We presented this work in a [paper at CHI 2011]({% post_url 2011-05-09-breath-control-of-amusement-rides-chi-2011 %}). The Discovery Channel show 'Daily Planet' also did a piece on the Bronco ([more details]({% post_url 2011-11-01-broncomatic-on-daily-planet-discovery-channel %})).</div> 

