---
layout: page
title: About
permalink: /about/
---

I am an academic at the University of Nottingham, UK. I'm part of the [Mixed Reality Lab](https://www.nottingham.ac.uk/research/groups/mixedrealitylab/), and can usually be found either there, or in C3 in the Computer Science building.

I do research relating to the use of the whole body in interaction with computers. A lot of the time this involves building systems to test out ideas, and studying how these systems work in real world settings with users. For example I have been involved in building [computerised fairground rides]({{site.baseurl}}/projects/Rides/index.html), several [physical game systems]({{site.baseurl}}/games/), and presenting work as [live performances]({{site.baseurl}}/performances/).

See the [projects]({{site.baseurl}}/projects/) section for a thematic breakdown of work I have done.

You can contact me on:
<table border="0">
<tbody>
<tr>
<td>Email:</td>
<td><a href="mailto:joe.marshall@nottingham.ac.uk">joe.marshall@nottingham.ac.uk</a></td>
</tr>
<tr>
<td>Phone:</td>
<td>+44(0)7905 696427</td>
</tr>
</tbody>
</table>

## Open Source and Freelance work

I'm available for freelance work, particularly on open source projects. I have general development skills in everything from assembler (8086, ARM, AVR etc.) & C++ to Python and JavaScript. I also have a lot of experience contributing to open-source code, with significant contributions on a range of projects; in particular, I was responsible for porting a range of python modules to work in webassembly, and added several features to the [Pyodide](https://github.com/pyodide/pyodide/) project to make things work there. I've also done fixes and features in a range of related projects, including [Emscripten](https://emscripten.org/), [CPython](https://www.python.org/). See my [GitHub profile](https://github.com/joemarshall/) for examples of open source contributions. I have experience of working with continuous integration and testing, and extensive experience writing and shepherding pull requests to get them included in established projects. 

Work I can do includes entirely new projects (e.g. https://joemarshall.github.io/websensors/), bugfixes to existing projects (e.g. https://github.com/python/cpython/pull/26062), adding features to projects (e.g. https://github.com/urllib3/urllib3/pull/3195).

If you have a project in mind and want to discuss the possibilities, please drop me an email or give me a call on the contact details above. I also do closed-source work, but have lower rates for open source projects.

## About me

This page contains a text based list of publications, performances and project work which I have been involved in, funding I have received etc. The wider site provides full details of all this work.

A formal CV is also available as a [two page PDF]({{ site.baseurl }}/uploads/2017/01/cv-2pg-20170113.pdf) with selected publications (last updated Jan 2017). Check out [Google Scholar](https://scholar.google.co.uk/citations?user=2tMhmgIAAAAJ&hl=en&oi=ao) for a full publications list. 


## Peer Reviewed Publications

{% assign mainposts = site.categories["Publications"]| where: "layout" , "post" %}
{% for post in mainposts %}
{% assign citationlen = post.citation | size %}
{% assign pdflen = post.pdflink | size %}
{% if citationlen > 0 %}
{{post.citation}}
{% if pdflen > 0 %} [PDF]({% if post.pdflink contains "://" %}{{post.pdflink}}{% else %}{{site.baseurl}}{{post.pdflink}}{%endif %} ) {% endif %} [more...]({{site.baseurl}}{{post.url}})
{% endif %}
{% endfor %}

## Presentations, Performances and Media

{% assign mainposts = site.categories["Performances"]| where: "layout" , "post" %}
{% for post in mainposts %}
{% assign citationlen = post.citation | size %}
{% if citationlen > 0 %}
{{post.citation}} [more...]({{site.baseurl}}{{post.url}})
{% endif %}
{% endfor %}

## Research Funding

**2014-2019 Living with Digital Ubiquity:** – Named researcher on EPSRC Platform Grant (EP/M000877/1, £1.25 million)

**2012-2015 Interaction in motion:** 3 year Leverhulme Early Career Fellowship to study the design of mobile devices and software for active use during a wide range of movement activities, from walking in the street, to extreme sports performed in harsh environments.

I have been a named researcher on several projects funded by Horizon Digital Economy Research (RCUK):

**2012 Nissan Thrill Laboratory:** 9 month project funded by Horizon & Nissan, studying the thrill of driving, and presentation of this study as a promotional campaign for the new Nissan Juke vehicle.

**2011-2012: Vicarious:** 2 year project funded by Horizon which studied the use of physiological data in television production. I was a lead developer for a software architecture which is used in this project to integrate physiological sensing data from a range of sources with video.

**2009-2011: Day in the Park:** 2 year project funded by Horizon in which we studied theme park visiting and theme park rides. As part of this project, I led the creation and study of an interactive breathing controlled Bucking Bronco ride.
