---
Date: 2017-04-09
Title: "Monospace System Font Stack"
---
<style>
.sample {
  background-color: #f5f5f5;
  font-size: 22px;
  margin-left:10px;
  padding: 10px;
</style>

Most operating systems ship with a few decent if not great monospace fonts.

Basically, the only goal is to avoid using "Courier New" and if possible
regular Courier as well.

Other notes:
* Menlo started shipping in 2009 with Mac OS X 10.6, so it's not worth
  optimizing and adding
  [Monaco](https://en.wikipedia.org/wiki/Monaco_(typeface))
* [Consolas](https://www.microsoft.com/typography/fonts/font.aspx?FMID=1924) has been shipping in Microsoft products since 2007. 
* The classic [Lucida Console](https://en.wikipedia.org/wiki/Lucida#Lucida_Console) could be swapped instead of Consolas to catch very old windows machines, but not worth optimizing for.

```css
/* 1: Future MacOS/iOS system font
 * 2: Modern Windows
 * 3: Linux of some flavors
 * 4: Current MacOS/iOS 
 * 5: Unusual or old system default
 *    Specify "courier" so we don't use 
 *    "courier new" which is very bad
 */
font-family:
  /* 1 */ "SFMono-Regular",
  /* 2 */ consolas, 
  /* 3 */ "Liberation Mono",
  /* 4 */ menlo,
  /* 6 */ courier, monospace;
```

### monospace default

It's probably something gross like Courier New.

<p class="sample" style="font-family: monospace;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

If a font is not installed, it will be in the standard *serif* font:

<p class="sample" style="font-family: serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### San Francisco Mono

<p class="sample" style="font-family: SFMono-Regular, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Consolas

<p class="sample" style="font-family: consolas, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Menlo

<p class="sample" style="font-family: menlo, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Monaco

<p class="sample" style="font-family: monaco, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

###  Lucida Console

<p class="sample" style="font-family: lucida console, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Courier New 

<p class="sample" style="font-family: courier new, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Courier

<p class="sample" style="font-family: courier, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

## References

* 2015-10-31 [System Shock Mono](http://z12t.com/system-shock-mono/) describes making a system font stack for monospace fonts.

