---
Date: 2017-04-09
Title: "CSS System Font Stack - Monospace"
---
<style>
.sample {
  background-color: #f5f5f5;
  font-size: 22px;
  margin-left:10px;
  padding: 10px;
</style>

Most operating systems ship with a few decent if not great monospace fonts.
And my goal is to use them, and to avoid "Courier New" and "Courier" if
possible.

It's possible in a few years that the default will actually be a real
system font.  It's claimed [Firefox
55 will use Consolas or
Menlo](https://www.fxsitecompat.com/en-CA/docs/2017/some-of-browser-default-fonts-have-been-changed/).  Looks like Chrome on modern windows is also [using Consolas](https://bugs.chromium.org/p/chromium/issues/detail?id=388087).  And who knows, maybe Apple's Safari will use the mysterious [SFMono-Regular](https://developer.apple.com/fonts/) (right now seems only available for applications, not CSS).

Until then, here's my monospace system stack.  It's simple:

```css
/* 1: Current MacOS/iOS font since 2009
 * 2: Current Windows font since 2007
 * 3: If nothing else matches, use the system default.
 *    Either it's over 10 years old and it's hopeless.  Or
 *    it's linux or other OS, which hopefully has better defaults
 *    and/or has been customized by the user.
 */
font-family:
  /* 1 */ menlo,
  /* 2 */ consolas, 
  /* 3 */ monospace;
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

If a font below is not installed, it will be in the standard *serif* font:

<p class="sample" style="font-family: serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Menlo

Menlo has been the current Mac (both MacOS and iOS) monospace system font
since 2009 with the release of MacOS 10.6.

<p class="sample" style="font-family: menlo;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Consolas

[Consolas](https://www.microsoft.com/typography/fonts/font.aspx?FMID=1924) has been available on Windows products since 2007.

<p class="sample" style="font-family: consolas;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Courier

<p class="sample" style="font-family: courier;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

###  Lucida Console

Lucida Console has been the main monospace font on windows products for a very
long time and is still available on Windows 10. That said, Consolas is likely
a better choice for modern systems.

<p class="sample" style="font-family: lucida console;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Monaco

Monaco was the default monospace font for Mac, but has been superceeded by Menlo starting in 2009 with MacOS 10.6.  While it is still available in MacOS 10.12.4, it is missing in iOS 10.3.1.

<p class="sample" style="font-family: monaco;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Courier New 

It's so thin since it was designed for a piece of metal hitting a sloppy typewriter ribbon smashing ink onto a paper.  Why this even appeared at all as a digital font, I have no idea.

<p class="sample" style="font-family: courier new;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### SFMono-Regular

Oddly not avaiable in Safari by default, and must be installed first.  I
suspect a future release will clear this up.

<p class="sample" style="font-family: SFMono-Regular;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

## References

* 2015-10-31 [System Shock Mono](http://z12t.com/system-shock-mono/) describes making a system font stack for monospace fonts.

