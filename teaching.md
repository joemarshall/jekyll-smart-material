---
layout: page
title: Project Ideas
permalink: /teaching/
---
# Project Ideas

Here are some project ideas for undergraduate projects:

## GPU Shader based flying simulation

Flying is a really fun way of moving in games; for example I've previously supervised a couple of projects where you have wings and can fly in VR. One thing that is difficult is estimating how a particular shape of wing and motion of wings will move the player. For this project, you will use GPU shaders to estimate the forces on a flying person or object to simulate e.g. wingsuit flying, or use of wings like a bird, or different shapes of paper aeroplane. I anticipate this working something like the following: 

1) Render the flying object shape to an offscreen depth buffer from directly below (or straight ahead, I'm not sure)
2) Use a shader on the rendered depth buffer to calculate how much force each pixel will apply to the moving body.
3) Apply the forces from each pixel

As an advanced version of this, you might also calculate and render motion to allow for moving flight surfaces e.g. flapping wings.

I'm anticipating you'll build some kind of simple game or experimental environment for this - e.g. a paper aeroplane simulator, a flappy bird simulator
This is quite a techy


## It’s behind you - simulating new body parts in vr gaming

In this project, you’ll build a vr game which simulates the possibility of having new body parts, such as tails, horns, extra arms and legs, spines on your back etc. This has lots of fun challenges, such as how do you simulate the extra weight of these appendages and their effect on balance, how do people control things which are behind them or otherwise out of their view, can you alter the visual effects of walking or moving to make it feel to the user like they are affected by the appendages, how do you want the user to pose to play, e.g. do you want them to play on all fours as a unicorn? I’m open as to what game is built with this. In my head I have some kind of open-ended smash-em up thing, where you can be various fantastical creatures, and you have to destroy an environment as much as possible, but I think there are loads of fun ways you could run with this idea.

This is a project which will probably involve quite a lot of programming and will be done either in unity or Godot game engines, on oculus quest (we have them for borrowing).

## If you want to send me your ideas

If you have a cool idea that you want to work on, hit me up with it. Things I’ll happily supervise:

* Interesting things with sensors, especially if they’re anything to do with tracking exercise or bodily motion in some way.

* Full body and exercise games.

* Doing odd things with virtual reality or augmented reality. Particularly messing with people’s senses.

* Other games or art things.

My research work is about exploring new ways of interacting with computers through the use of sensors. Most of my work looks at this by building entertainment applications, such as games, artworks and sports tracking systems.

I am interested in supervising both more pure HCI focused projects where I will expect you to design and build something then study it with users, or more ubicomp style sensor processing projects where you will develop a sensor processing algorithm of some kind then analyse the quality of that algorithm using quantitative testing.

Some research areas I’m particularly active in, so likely to say yes to a project in:

## Sensory misalignment in VR

We have recently been building a number of systems that exploit ‘sensory misalignment’, where the user experiences contradictory sensations in different senses, for example by using virtual reality headsets to create 3d environments where the view moves differently to how the person is moving in the physical world. This can create exciting experiences that are otherwise physically impossible. Most practical projects in this area make use of VR or AR headsets (which we have a stock of) and require some knowledge of 3d development.

## VR and physical objects

I’m interested in how people interact with real world physical objects whilst they are in virtual reality, and what that means for user experience and interaction. The punch-bag game above is an example of this stuff, I’m also interested in use of physical props, balancing on things with feet or hands whilst in VR, and probably anything else you can think of where physical objects are combined with VR.

## Sensor processing for sport or exercise

I’d be interested in projects relating to sensing of sport and exercise. What I am looking for here is something which goes beyond basic tracking of location or steps, to look at measures such as quality of movement, analysis of more complex skill based movements such as bodyweight exercises, martial arts or racket sports, or evaluation of interactions between multiple sportspeople. This could either be a primarily sensor processing project where you use machine learning processing of smartphone sensors or computer vision to track human motion and measure how well your algorithm works, or a more HCI focused project where you build a complete system for exercise users (e.g. an exercise tracker or a game driven by physical exertion) and evaluate it.

## Cool and odd games things

Your idea here