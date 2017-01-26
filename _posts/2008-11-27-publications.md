---
layout: page
title: "Joe Marshall - CV"
date: 2008-11-27 19:04
author: admin
postid: 18
comments: true
categories: []
tags: []
---
This page contains a list of publications, performances and project work which I have been involved in. Last updated January 2017.

A more formal CV is also available as a [two page PDF]({{ site.url }}/uploads/2017/01/cv-2pg-20170113.pdf) with selected publications. I also have a [full publication list]({{ site.url }}/uploads/2008/11/joemarshall-publications.pdf).

## Research Funding

**2014-2019 Living with Digital Ubiquity:** – Named researcher on EPSRC Platform Grant (EP/M000877/1, £1.25 million)

**2012-2015 Interaction in motion:** 3 year Leverhulme Early Career Fellowship to study the design of mobile devices and software for active use during a wide range of movement activities, from walking in the street, to extreme sports performed in harsh environments.

I have been a named researcher on several projects funded by Horizon Digital Economy Research (RCUK):

**2012 Nissan Thrill Laboratory:** 9 month project funded by Horizon & Nissan, studying the thrill of driving, and presentation of this study as a promotional campaign for the new Nissan Juke vehicle.

**2011-2012: Vicarious:** 2 year project funded by Horizon which studied the use of physiological data in television production. I was a lead developer for a software architecture which is used in this project to integrate physiological sensing data from a range of sources with video.

**2009-2011: Day in the Park:** 2 year project funded by Horizon in which we studied theme park visiting and theme park rides. As part of this project, I led the creation and study of an interactive breathing controlled Bucking Bronco ride.

## Selected Peer Reviewed Publications

{% assign mainposts = (site.categories["Publications"]| where: "layout" , "post") %}
{% for post in mainposts %}
{% assign citationlen = post.citation | size %}
{% assign pdflen = post.pdflink | size %}
{% if citationlen > 0 %}
{{post.citation}}
{% if pdflen > 0 %} [PDF]({% if post.pdflink contains "://" %}{{post.pdflink}}{% else %}{{site.url}}{{post.pdflink}}{%endif %} ) {% endif %}
{% else %}
{{post.title}} {{post.year}} {{post.date}}
{% endif %}
{% endfor %}



Tennent, P., Reeves, S., Benford, S., Walker, B., Marshall, J., Brundell, P., Meese, R., Harter, P. 2012, **The Machine in the Ghost: Augmenting Broadcasting with Biodata**. Proceedings of alt.chi 2012, Extended Abstracts of the ACM SIGCHI Conference on Human Factors in Computing Systems, ACM, New York, NY, USA

Rennick Egglestone, S., Whitbrook, A., Greensmith, J., Walker, B., Benford, S., Marshall, J., Kirk, D., Schnadelbach, H., Irune, A. and Rowland, D. **Psychometric profiling in the theme park**, in ACM Computers in Entertainment, Volume 8, issue 3 (2010). [PDF]({{ site.url }}/uploads/2010/04/psychometrics_ace.pdf)



## Presentations, Performances and Media

{% assign mainposts = (site.categories["Performances"]| where: "layout" , "post") %}
{% for post in mainposts %}
{% assign citationlen = post.citation | size %}
{% if citationlen > 0 %}
{{post.citation}}
{% endif %}
{% endfor %}
