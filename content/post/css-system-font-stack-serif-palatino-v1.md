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

<style>
.sample {
  background-color: #f6f8fa;
  font-size: 22px;
  margin-left:10px;
  padding: 10px;
</style>

<p class="sample" style="font-family: hoefler text, constantia, palatino
linotype, palatino, serif;">
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
This is not a monospace font.<br>
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.
</p>

### Hoefler Text

This is mac only.

<p class="sample" style="font-family: hoefler text, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Constania

On Windows or Macs, if they have Microsoft Office installed.

<p class="sample" style="font-family: constania, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Palatino Linotype

THis is windows only.

<p class="sample" style="font-family: palatino linotype, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Palatino

THis is mac only

<p class="sample" style="font-family: palatino, monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

## serif (default)

<p class="sample" style="font-family: serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>
