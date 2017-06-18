---
date: 2017-04-09
title: "CSS System Font Stack - Serif Large - V1"
---

The large Serif font stack uses a number of more styled serif system fonts that have a larger size.  While this can be used as body text, it might be best at larger sizes.

All fonts in this stack use old style, proportional numbers making them
inappropriate for numeric tabkles.

## CSS

```css
font-family:
  /* 1 */ "Hoefler Text",
  /* 2 */ Constantia,
  /* 3 */ Georgia, serif;
```
This is what it looks like on your browser:

{{< font-sample "font-family: hoefler text, constantia, georgia, serif;" >}}

## The Fonts

If font below is not available on your system, it will be rendered in a
`monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a monospace font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Hoefler Text

This is mac only.

{{< font-sample "font-family: hoefler text, monospace;" >}}

### Constania

On Windows only.

{{< font-sample "font-family: constania, monospace;" >}}

### Georgia

{{< font-sample "font-family: georgia, monospace;" >}}

## serif (default)

{{< font-sample "font-family: serif;" >}}
