---
date: 2017-03-25T23:56:04Z
draft: true
title: Typography
---

## General Guidelines on Size and Contrast

TLDR: use better fonts, in a larger size with higher contrast.

* [Butterick's Practical Typography](http://practicaltypography.com/index.html)
* [How The Web Became Unreadable](https://backchannel.com/how-the-web-became-unreadable-a781ddc711b6#.gqhmlwt6u)
* [Contrast Rebellion](http://contrastrebellion.com)
* [Your Body Text Is Too Small](https://blog.attackthefront.io/your-body-text-is-too-small-5e02d36dc902#.ab5myen3s)

## One-Column layout.

We are in a "article economy" now, now a "site economy"
I'm downstream from Google, Facebook, Twitter or LinkedIn for just about every visit.

While you can follow people on Medium.com, I suspect most visits are also downstream from another source as well.

Basically this means you are publishing *articles* and not a *website*.  No
one is visiting "my website", they reading "an article". If
someone wants to see your landing page, they can easily click to it.

This means you don't need sidebars, abouts, and all sorts of other place fillers.
It makes the design easy: it works on all browsers, and has CSS you can understand.  Mobile optimization is near
trivial *without using a framework*.  Rendering is also lightning fast.

## "Github Style"

GitHub really nailed it with their basic markdown rendering.   The output is simple and clean and easy to read.

It is actually similar to Safari's "reader view" as well, except I don't want
anyone to have to turn that on.  It should be readable *by default*.

## Fonts

Web fonts are great, however for this site, I'm using system fonts (link TBD)
for many reasons:

* Fast, nothing to load, nothing to do. We are frequently on low quality
  links, and we don't want to wait around for a font to load.
* Avoids Flash of Invisible Text issues and the various javascript hacks to work around
  it
* Reasonable easy to read and good looking.  Perhaps a bit boring, but I'm not
  the New York Times and don't need to do "branding by font"

This is also what GitHub and Safari Reader-view does as well.

## Links and Underlines

Wow, default underlining for links looks horrible!

Here's some tricks:

* [Crafting link underlines on Medium](https://medium.design/crafting-link-underlines-on-medium-7c03a9274f9#.ericl0z92)
* [Styling Underlines on the Web](https://css-tricks.com/styling-underlines-web/)

Uh, I'm not doing crazy drop shadow/canvas/etc tricks.  To make the underline look less chunky, I made it gray.

