---
date: 2017-04-09
title: "CSS System Font Stack - Serif Charter - V1"
---

[Charter](http://practicaltypography.com/charter.html) is a great font. 

This was originally designed in 1987 for print.  In 1987 that meant 300 dpi laser
printers.  That's very close to what we call retina or HiDPI for screens
today. (It's not exactly the same but the point is holds up well on today's
screens).

MacOS and iOS now make Charter available as a system font, so it's great
choice.   It's also a free font, and so likely installed on many linux and
Windows systems as well.  

The next closest system front is Georgia, which happens to be designed by the
same person! Georgia is a touch larger and uses proportial numbers.

## CSS

```css
font-family:
  /* 1 */ Charter,
  /* 3 */ Georgia,
  /* 4 */ serif;
```

This is what it looks like on your browser:

{{< font-sample "font-family: charter,georgia,serif;" >}} 

## The Fonts

If font below is not available on your system, it will be rendered in a
`monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a serif font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Charter

{{< font-sample "font-family: charter, monospace;" >}}

### Georgia

{{< font-sample "font-family: georgia, monospace;" >}}

### serif (default)

{{< font-sample "font-family: serif;" >}}
