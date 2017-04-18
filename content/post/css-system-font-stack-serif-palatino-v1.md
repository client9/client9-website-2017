---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Palatino - V1"
---

into

## CSS

```css
font-family:
  /* 1 */ "Hoefler Text",
  /* 2 */ Constantia,
  /* 3 */ "Palatino Linotype", Palatino,
  /* 4 */ serif;
```
This is what it looks like on your browser:

{{< font-sample "font-family: hoefler text, constantia, palatino linotype, palatino, serif;" >}}

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

This is windows only.

{{< font-sample "font-family: palatino linotype, monospace;" >}}

### Palatino

This is mac only

{{< font-sample "font-family: palatino, monospace;" >}}

## serif (default)

{{< font-sample "font-family: serif;" >}}
