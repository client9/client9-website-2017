---
Date: 2017-04-09
Title: "Using System Fonts"
---

### Sans Serif

As per Github 2017-04-10

```css
/* 1: Safari/Mac special, BlinkMac is the current
 *    Chrome method for using the mac system font
 * 2: Recent windows
 * 3: Older Macs,
 * 4: system default,
 * ?: Unicode emojis
 */
font-family:
  /* 1 */ -apple-system, BlinkMacSystemFont,
  /* 2 */ "Segoe UI",
  /* 3 */ Helvetica Neue,
  /* 4 */ sans-serif;
  /* ? */ "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
```

### -apple-system

This only works on MacOS or iOS, *using Safari*.

<p class="sample" style="font-family: -apple-system, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### BlinkMacSystemFont

This only works on MacOS or iOS, *using Chrome*.

<p class="sample" style="font-family: BlinkMacSystemFont, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Segoe UI

<p class="sample" style="font-family: Segoe UI, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### Helvetica Neue

<p class="sample" style="font-family: Helvetica Neue, serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### sans-serif (default)

<p class="sample" style="font-family: sans-serif;">
THE QUICK BROWN FOX JUMPED OVER THE LAZY DOG.<br>
The quick brown fox jumped over the lazy dog.<br>
0123456789<br>
11111.11<br>
88888.88<br>
0Oo il1I! 2z 8$s5S😺
</p>

### References

* 2017-01-01 [System Fonts Are Great](https://benrabicoff.com/system-fonts-are-great/) General praise and slight variation of the github sans-serif font stack.
* 2016-09-20 [The New System Font Stack?](https://bitsofco.de/the-new-system-font-stack/) is the article that got me started.
* 2016-07-21 [GitLab Issue 20102](https://gitlab.com/gitlab-org/gitlab-ce/issues/20102) has a discussion if gitlab should switch to system fonts.  They decided against, but has useful notes on monospace system fonts.
* 2016-07-16 [Native Fonts in 4.6](https://make.wordpress.org/core/2016/07/07/native-fonts-in-4-6/) Wordpress switched to native fonts for their admin UI.  This documents their font stack.
* 2015-11-12 [Using System Fonts in Web Design: A Quick and Practical Guide](https://www.smashingmagazine.com/2015/11/using-system-ui-fonts-practical-guide/)
* 2015-10-31 [System Shock Mono](http://z12t.com/system-shock-mono/) describes making a system font stack for monospace fonts.
* 2015-10-21 [System Shock](https://medium.design/system-shock-6b1dc6d6596f) Discussion by medium.com on their use of system fonts for their web UI (they use a custom web font for their article text).
