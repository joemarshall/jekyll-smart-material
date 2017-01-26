---
layout: post
title: "Patio Tile-o-matic"
date: 2011-07-13 14:50
author: admin
postid: 527
comments: true
categories: [Software and Hardware]
tags: []
image: /uploads/2011/07/screenshot.jpg
---
[![]({{ site.url }}/uploads/2011/07/screenshot-300x181.jpg "Patio Tile-o-matic Screenshot")]({{ site.url }}/uploads/2011/07/screenshot.jpg)

Want to lay a patio with a random layout?

If you have a load of slabs of different sizes, and want to lay a patio, working out a layout can be fiddly. You need to make sure that you fit in the slabs, taking account of the border shape of the patio, the size of the slabs, how many slabs you have etc.

In addition to that, there are a couple of rules you need to follow, to avoid things that look bad (see the brilliant [Paving Expert](http://www.pavingexpert.com/random01.htm) site for more information).

There are a few programs out there that let you generate a random layout. But at least all the ones I've found have two problems:

1) They don't follow the rules of making a nice looking patio, so you often get cross patterns where four slabs meet, or long unbroken lines along slab edges.
2) They don't allow you to set limits on how many of each slab you have, which is a pain, as stone merchants often sell slabs in convenient 'patio packs', with a fixed set of slabs to cover a certain number of square metres.

So, to do our patio, I hacked together this software, Patio Tile-o-matic. It works with a set of slabs where all edge lengths are multiples of the width of the smallest slab, or roughly so.

For example, my slabs were:
290x290mm
290x600mm
600x600mm
900x600mm

which are all roughly multiples of 300mm.

You can tell the program how many of each slab you have, by pressing 'M' to open the materials editor. All measurements are in 'grid size', which is a multiple of the smallest slab width - for example with mine, I had
1x1 slabs (290x290)
1x2 slabs (290x600)
2x2 slabs (600x600)
3x2 slabs (900x600)

To use it, you first need to measure the shape of your patio. Then, take the smallest slab width, and create a grid of that size aligned to your patio, for example my patio was 400mm long, so I had 13 300mm grid squares in that direction (with a bit of slack left for pointing).

In the program, you need to edit the patio shape to be the size and shape of your patio, press E to go into the patio editor (or select it from the menu), and click to make the bits of your grid that are not part of the patio black, and the bits that are, grey. Looking at the image above, you can see my patio has a wider section at the top. The simpler and more square you make this, the more likely you will get a decent layout. If a grid square is half patio and half outside, make it grey, you'll need to do a cut there (you might want to play with the alignment of your grid to the patio shape to reduce the number of cuts)

Once you have done your patio shape, press R to generate a slab layout.

If you can't generate a layout, check 3 things:
1) Do you have enough slabs to cover the whole space.
2) Try smoothing the edges of the patio to make them less complex - you can always do cuts if you have bits of wall coming into the patio or whatever.
3) Layout happens from the top downwards. There will never be cuts on the top edge - so if you need an edge to be easiest to lay, orient your grid that way round (I put this end next to the house for my patio). It may be easier for it to lay out if the widest edge is at the top.

If you like the layout, press 'S' to save it out, this saves it as three files, in the directory that the program lives in - one file is a nice coloured and labelled slab layout diagram (as a png image), the second file is a slab layout in grey, so you can see what it will look like a bit more clearly. The third file is a .slb file, which you can open up again to reload your layout in the software.

You can also add 'information boxes', by pressing 'I'. These let you label elements of the patio layout, such as manhole covers, in order that you can see how many slabs you will need to mess with (for example I generated a load of patio layouts, because I wanted to have big slabs over the manhole cover so as to minimise the number of slabs that needed cutting).

You can alter the layout constraints by pressing 'C'. Layout constraints stop the layout having long lines of slabs, and also stop it allowing four corners to meet.

Bear in mind:
1) The diagrams produced from this do not take account of differing pointing widths - with slabs like I had, where the small ones have 10mm less width to make pointing neater, this is no problem, with more evenly sized slabs, you may find yourself having to fiddle things slightly on the ground.
2) This software presumes everything is a square grid, due to the nature of real stuff, if you have an space enclosed by walls or something, you will probably find yourself doing cuts even if you generate something that theoretically fits perfectly into the space.
3) It is only as good as your measuring and gridding. Make sure you measure accurately (leaving some space for pointing).
4) For some complex designs, or if you don't have enough stone, this just won't work.
5) This is only any good if you want to lay everything to a rectangular grid - if you want lovely curving stuff, you're on your own.
6) The whole thing is a dirty hack, so don't expect it to be that polished. It worked for me, and I have a patio thanks to it, but I can't guarantee much more!

On the plus side, for the job I had to do, it is much better than anything else I could find.

I'm releasing it here, for free, no guarantees or anything. Windows only I'm afraid. If you use it and like it, please do let me know. If you use it and really love it, you're welcome to paypal a donation to "paypal at joemarshall.org.uk".

Download it from [here]({{ site.url }}/uploads/2011/07/patiotileomatic.exe).

