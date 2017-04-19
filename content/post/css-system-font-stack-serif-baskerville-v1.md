---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Baskerville - V1"
---

This is likely best for larger sizes and not body text.  

Iowan and Baskerville are similar sizes and should preserve the layout of the page

Baskerville isn't designed for the screen and is best at large sizes here.

While Mac users get a very nice upgrade using Iowan Old Style, there is no obviously choice for Windows users.

## CSS

```css
font-family:
  /* 1 */ "Iowan Old Style",
  /* 2 */ Baskerville Old Face, Baskerville,
  /* 3 */ Cambria, Georgia, serif;
```
This is what it looks like on your browser:

{{< font-sample  style="font-family: iowan old style, baskerville old face, baskerville, cambria, georgia, serif;" >}} 

## The Fonts

If font below is not available on your system, it will be rendered in a `monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a serif font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Iowan Old Style

This is mac-only.

{{< font-sample "font-family: iowan old style, monospace;">}}

### Baskerville 

This is mac-only.

{{< font-sample "font-family: Baskerville, monospace;" >}}

### Baskerville Old Face

This is windows-only.

{{< font-sample "font-family: baskerville old face, monospace;" >}}

### serif

{{< font-sample "font-family: serif;"i >}}
