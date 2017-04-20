---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Small - V1"
---

This system stack is upgrade of the traditional serif font Times New Roman.  The Mac and Windows alternate are both very dense and screen optimized.

## CSS

```css
font-family:
  /* 1 */ Athelas,
  /* 2 */ Cambria,
  /* 3 */ serif;
```
This is what it looks like on your browser:

{{< font-sample "font-family: Athelas, Cambria, serif;" >}}

## The Fonts

If font below is not available on your system, it will be rendered in a
`monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a serif font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Athelas

This is mac only.

{{< font-sample "font-family: Athelas, monospace;" >}}

### Cambria

On Windows or Macs, if they have Microsoft Office installed.

{{< font-sample "font-family: cambria, monospace;" >}}

### Serif (default)

This is Windows name for the Palatino font.

{{< font-sample "font-family: serif;" >}}
