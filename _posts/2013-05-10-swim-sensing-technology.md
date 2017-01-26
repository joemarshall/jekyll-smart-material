---
layout: post
title: "Swim Sensing Technology"
date: 2013-05-10 13:07
author: admin
postid: 977
comments: true
categories: [Interaction in Motion]
tags: []
image: /uploads/2013/05/examplelog-web.png
---
So, in my [alt.chi paper]({{ site.url }}{% post_url 2013-04-29-mobile-interaction-does-not-exist-at-alt-chi-2013 %}), I argued that interaction designed for use while swimming was an extremely challenging thing to design and build.

So, it seemed right that I should actually attempt to build some swimming technology and design some interactions using it. <span style="line-height: 1.6em;">So, I set out to build a system for 'interactive swimming'. This page describes the current state of the swim sensing technology which I am developing. I currently have not built any applications using it.</span>

By that I mean a system which:

*   <span style="line-height: 13px;">Is aware of the movement of the swimmer, their body position, speed through the water etc.</span>
*   Provides real-time feedback to the user based on the swim position input.
There are a bunch of existing systems in the sports-science literature which use sensors to study swimming, and a few commercial products (eg. Garmin and Swimovate watches, Finis hydrotracker)..

These fall into two categories:

*   <span style="line-height: 13px;">Customised pools augmented with customised sensors, networks of custom sensors, sonar detection, video tracking, tow lines etc. to give extremely high quality data for post analysis of the swimming of elite swimmers.</span>
*   Watches or similar simple accelerometer based objects that count strokes per length and lengths. Essentially, these just mechanise the task of counting, and save the swimmer from doing it.
These are interesting, but I want to do something slightly different. I would like to build systems which provide real time response to the swimmer, and do more than just count strokes or lengths. I also am more interested in lower level swimmers, un-coached swimmers, people swimming in public sessions, people who are not purely performance focused in their desire to swim, which means that systems relying on high levels of instrumentation of pools are likely to be overkill. Clearly there is a trade-off in that I am unlikely to achieve such high data quality, but I think it is worth it for the potential to use the system with a more diverse user base.

So, I put together a list of specifications for the technology.

*   Not augment the pool or require objects off the swimmer - as augmented pools limit use to very high level swimmers in conventional coaching settings.
*   Use commodity hardware or very cheap custom hardware, ie. low quality sensors rather than extremely expensive industrial or scientific sensors.
*   Provide real time detection of velocity, acceleration, body angle, strokes, in order to be able to respond to swimming in a more nuanced way.
*   Real time response to the swimmer
I then spent a few months hacking code, putting mobile phones in waterproof cases, analysing sensor readings, developing algorithms, going swimming, to come up with something which gives the results below.

[![Example output from Swim Sensing System]({{ site.url }}/uploads/2013/05/examplelog-web-1024x377.png)]({{ site.url }}/uploads/2013/05/examplelog-web.png)

What this essentially shows is me swimming two lengths of my local pool, during a public session. I swum the first length breaststroke, did an open turn and swam back crawl. In the data you can see:

*   <span style="line-height: 1.6em;">The clear effect of different strokes on velocity and acceleration</span>
*   <span style="line-height: 1.6em;">Detection of swimming direction</span>
*   <span style="line-height: 1.6em;"> Detection of absolute position in the pool and a quite rough estimation of instantaneous velocity.</span>
*   <span style="line-height: 1.6em;"> Detection of body roll and forwards/backwards angle.</span>
<span style="line-height: 1.6em;">All this data is completely real-time, with no need to wait till the end of a length to estimate velocity over the length. </span>The system uses an unmodified Android mobile phone, which is strapped in a waterproof case to the lower back of the swimmer. We have audio out and headphones in order to provide feedback (and potential for vibro-tactile feedback using the built in vibration motor). Depending on the waterproof case in which the phone is held and the swimming stroke being used, changing the display colour can be used to show a light which could communicate information visually people on the side and other swimmers.

