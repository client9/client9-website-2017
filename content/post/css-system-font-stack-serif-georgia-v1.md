---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Georgia - V1"
---

The Georgia system stack is serif system font stack best suited for body text.  It's plain but will be clear and legible.  The fallback font is Georgia hence the name.
All of the fonts are close in size too, so the page  should not look radically different across platforms.

One issue with this stack is that primary fonts all use tabular numbers while Georgia use proportional numbers.

## CSS

```css
font-family:
  /* 1 */ Charter,
  /* 2 */ Cambria,
  /* 3 */ Georgia,
  /* 4 */ serif;
```

This is what it looks like on your browser:

{{< font-sample "font-family: charter,cambria,georgia,serif;" >}} 

## The Fonts

If font below is not available on your system, it will be rendered in a
`monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a serif font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Charter

{{< font-sample "font-family: charter, monospace;" >}}

### Cambria

{{< font-sample "font-family: cambria, monospace;" >}}

### Georgia

{{< font-sample "font-family: georgia, monospace;" >}}

### serif (default)

{{< font-sample "font-family: serif;" >}}
