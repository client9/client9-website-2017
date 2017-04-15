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
 * 3: Unusual or older systems defaults 
 * 4: Unicode emojis
 */
font-family:
  /* 1 */ -apple-system, BlinkMacSystemFont,
  /* 2 */ "Segoe UI",
  /* 3 */ helvetica, arial, sans-serif,
  /* 4 */ "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
```

### Monospace

As per Github 2017-04-10

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
  /* 5 */ courier, monospace;
```

### Serif

* windows: Cambria or Constantia
* mac: Hoefler Text (maybe)
* default: Georgia or Palatino
* serif

### References

* 2017-01-01 [System Fonts Are Great](https://benrabicoff.com/system-fonts-are-great/) General praise and slight variation of the github sans-serif font stack.
* 2016-09-20 [The New System Font Stack?](https://bitsofco.de/the-new-system-font-stack/) is the article that got me started.
* 2016-07-21 [GitLab Issue 20102](https://gitlab.com/gitlab-org/gitlab-ce/issues/20102) has a discussion if gitlab should switch to system fonts.  They decided against, but has useful notes on monospace system fonts.
* 2016-07-16 [Native Fonts in 4.6](https://make.wordpress.org/core/2016/07/07/native-fonts-in-4-6/) Wordpress switched to native fonts for their admin UI.  This documents their font stack.
* 2015-11-12 [Using System Fonts in Web Design: A Quick and Practical Guide](https://www.smashingmagazine.com/2015/11/using-system-ui-fonts-practical-guide/)
* 2015-10-31 [System Shock Mono](http://z12t.com/system-shock-mono/) describes making system font stack for monospace fonts.
* 2015-10-21 [System Shock](https://medium.design/system-shock-6b1dc6d6596f) Discussion by medium.com on their use of system fonts.  I believe they have since switched back to web fonts.
