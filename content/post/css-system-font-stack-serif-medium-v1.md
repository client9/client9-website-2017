---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Medium - V1"
---

This system font stack is of a medium size, and suitable for body text and
larger headlines.   The primary fonts are similar in size and use
similar numeric forms.

While Mac users get a very nice upgrade from Palatino using Iowan Old Style, there is no obviously choice for Windows users.

For linux and other systems, I let it fall to the default `serif` as it's unclear what the right thing to is.  Many linux systems are heavily customized: in which case using the default is correct.

## CSS

```css
font-family:
  /* 1 */ "Iowan Old Style",
  /* 2 */ Palatino Linotype, Palatino,
  /* 3 */ serif;
```
This is what it looks like on your browser:

{{< font-sample  style="font-family: iowan old style, palatino linotype, palatino, serif;" >}} 

## The Fonts

If font below is not available on your system, it will be rendered in a `monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a serif font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Iowan Old Style

This is love MacOS/iOS font used in iBooks and Safari reader-mode.

{{< font-sample "font-family: iowan old style, monospace;">}}

### Palatino Linotype and Palatino

On Mac it is "Palatino", but on Windows it is called "Palatino Linotype" (or
even "Book Antiqua").  All 99.9% the same.

Palatino:
{{< font-sample "font-family: palatino linotype, monospace;" >}}

Palatino Linotype:
{{< font-sample "font-family: palatino, monospace;" >}}

### serif

At this stage you are not on a MacOS, iOS, Windows, or Android system and
anything goes.  Default to `serif`.

{{< font-sample "font-family: serif;" >}}
