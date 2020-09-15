---
layout: page
title: Project Ideas
permalink: /teaching/
---

# Project ideas

This page contains suggests for masters projects I would be interested in supervising.

My research work is about exploring new ways of interacting with computers through the use of sensors. Most of my work looks at this by building entertainment applications, such as games, artworks and sports tracking systems.

I am interested in supervising both more pure HCI focused projects where I will expect you to design and build something then study it with users, or more ubicomp style sensor processing projects where you will develop a sensor processing algorithm of some kind then analyse the quality of that algorithm using quantitative testing.

The below are just vague suggestions which should be seen as starting points for projects, talk to me if you're interested - you can mess with them and tailor them to your interests and skills:


## Sensory misalignment in VR

We have recently been building a number of systems that exploit 'sensory misalignment', where the user experiences contradictory sensations in different senses, for example by using virtual reality headsets to create 3d environments where the view moves differently to how the person is moving in the physical world. This can create exciting experiences that are otherwise physically impossible. Most practical projects in this area make use of VR or AR headsets (which we have a stock of). Some knowledge of 3d development is useful for all these projects.

Some possible project ideas in this area include: 
- We have a VR balance beam experience where you can dynamically tweak the view angle of the player to make it harder to balance. Currently it is just a balance beam and a control to adjust balancing difficulty. You could extend it to create a game or experience, and study people's responses to this game.
- Rotational amplification / attenuation. In "Redirected Walking", the view of a VR user is very slowly rotated as they walk, which allows them to think they are walking in a long straight line when they are actually walking in a circle within a smaller physical environment. This project would explore what happens when you take this subtle extra rotation and instead greatly amplify the rotation that the user sees in VR. For this project I would suggest you would build a small game in VR involving walking around a location (a maze?), and explore questions such as: How do users respond to extreme rotational amplification, and do they enjoy it, do they get used to it or does it just make them sick?; how can you design worlds so that the user will only walk in a fixed space when the virtual world is rotating differently to the real world? How do you represent the user's hands in the rotated space?
- Eating in VR: Using VR while eating, we can manipulate the eating environment by providing contradictory sensory information. For example we can change the visual appearance of food, change the perceived location which someone is eating in or change the sound of eating using audio. 

## VR and physical objects

I'm interested in how people interact with real world physical objects whilst they are in virtual reality, and what that means for user experience and interaction. Some knowledge of 3d development may be useful here. Example ideas include:

- We have a training punchbag which we used to build a simple VR punching simulation, where you punch a VR character and they fall down. This appears to be very compelling, but we haven't done any real exploration of how and why this is. For this project, you could build a more complex fighting simulation, and measure differences in user experience with and without the punchbag. You could also explore things such as making the punchbag present or not at different times in an experience, or how you practically orchestrate gameplay so that successful punches hit the punchbag whilst making it seem to the user as if they and opponents are moving dynamically.

- Balancing in VR - I'm interested in how people either balance themselves (e.g. hand balancing), or props (e.g. juggling, object balancing) whilst in VR, and what experiences this can drive. We have briefly explored various things including balancing on beams in VR, balancing on hands while wearing VR headsets, wearing VR in a flying harness. If you already have an interest in balance in any way then I'd be up for supervising projects exploring the use of a balance activity to drive VR experiences. 

- Something with new oculus hand tracking in VR - not sure what, maybe something about picking up real objects in VR, or about moving the representation of the hands in space, or conducting music or ....

## Sensor processing for sport or exercise

I'd be interested in projects relating to sensing of sport and exercise. What I am looking for here is something which goes beyond basic tracking of location or steps, to look at measures such as quality of movement, analysis of more complex skill based movements such as bodyweight exercises, martial arts or racket sports, or evaluation of interactions between multiple sportspeople. This could either be a primarily sensor processing project where you use machine learning processing of smartphone sensors or computer vision to track human motion and measure how well your algorithm works, or a more HCI focused project where you build a complete system for exercise users (e.g. an exercise tracker, a game driven by physical exertion) and evaluate it.

- Build a system which senses some kind of sport or exercise. Examples could be identifying push ups or other bodyweight exercises with a smartphone in a case on your body; Using computer vision to detect yoga poses; using mobile sensors to detect the type and quality of skateboarding or bmx tricks. 

- We also have a VR treadmill made by [Wizdish](http://www.wizdish.com), which allows you to sort of walk or run in VR. Building and evaluating an exercise system or exercise game using this would be interesting, as would creating ways to use the treadmill hardware to simulate different types of motion such as ice skating, skiing etc.
