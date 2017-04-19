---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Palatino - V1"
---

The Palatino font stack uses a number of more styled serif system fonts. While this can be used as body text, it might be best at larger sizes.

All numbers are proportional and the primary font uses old style numbers with descenders.

## CSS

```css
font-family:
  /* 1 */ "Hoefler Text",
  /* 2 */ Constantia,
  /* 3 */ Georgia, serif;
```
This is what it looks like on your browser:

{{< font-sample "font-family: hoefler text, constantia, Georgia,, serif;" >}}

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

On Windows or Macs, if they have Microsoft Office installed.

{{< font-sample "font-family: constania, monospace;" >}}

### Palatino Linotype

This is Windows name for the Palatino font.

{{< font-sample "font-family: palatino linotype, monospace;" >}}

### Palatino

This is Mac version of Palatino.

{{< font-sample "font-family: palatino, monospace;" >}}

## serif (default)

{{< font-sample "font-family: serif;" >}}
