---
Date: 2017-04-09
Title: "CSS System Font Stack - Serif Baskerville - V1"
---

into

## CSS

```css
font-family:
  /* 1 */ "Iowan Old Face",
  /* 2 */ Baskerville,
  /* 3 */ Cambria, Georgia, serif;
```
This is what it looks like on your browser:

<style>
.sample {
  background-color: #f6f8fa;
  font-size: 22px;
  margin-left:10px;
  padding: 10px;
</style>

<p class="sample" style="font-family: iowan old style, baskerville old face, baskerville, cambria, georgia, serif;"> 
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

## The Fonts

If font below is not available on your system, it will be rendered in a
`monospace` font.

<p class="sample" style="font-family: monospace;">
This is not a serif font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Iowan Old Style

<p class="sample" style="font-family: iowan old style, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Baskerville Old Face

<p class="sample" style="font-family: baskerville old face, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Baskerville 

<p class="sample" style="font-family: baskerville, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

