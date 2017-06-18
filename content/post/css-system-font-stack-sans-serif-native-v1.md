---
date: 2017-04-09
title: "CSS System Font Stack - Sans Serif Native - V1"
---

The Native font stack attempts to use the system sans serif font used by  operating system for user interfaces.   This is best for buttons and other UI elements on the page, but it also works for body text.

## The CSS

```css
/* 1: Safari/Mac special, BlinkMac is the current
 *    Chrome method for using the mac system font
 * 2: Recent windows
 * 3: Older Macs,
 * 4: system default,
 */
font-family:
  /* 1 */ -apple-system, BlinkMacSystemFont,
  /* 2 */ "Segoe UI",
  /* 3 */ Helvetica Neue,
  /* 4 */ sans-serif;
```

This is what is looks like on your browser:

{{< font-sample "font-family: -apple-system,BlinkMacSystemFont,segoe ui,helvetica neue,sans-serif;" >}}

## The Fonts

### -apple-system

This only works on MacOS or iOS, *using Safari*.

{{< font-sample "font-family: -apple-system, serif;" >}}

### BlinkMacSystemFont

This only works on MacOS or iOS, *using Chrome*.

{{< font-sample "font-family: BlinkMacSystemFont, serif;" >}}

### Segoe UI

{{< font-sample "font-family: Segoe UI, serif;" >}}

### Helvetica Neue

{{< font-sample "font-family: Helvetica Neue, serif;" >}}

### sans-serif (default)

{{< font-sample "font-family: sans-serif;" >}}

### References

* 2017-01-01 [System Fonts Are Great](https://benrabicoff.com/system-fonts-are-great/) General praise and slight variation of the github sans-serif font stack.
* 2016-09-20 [The New System Font Stack?](https://bitsofco.de/the-new-system-font-stack/) is the article that got me started.
* 2016-07-21 [GitLab Issue 20102](https://gitlab.com/gitlab-org/gitlab-ce/issues/20102) has a discussion if gitlab should switch to system fonts.  They decided against, but has useful notes on monospace system fonts.
* 2016-07-16 [Native Fonts in 4.6](https://make.wordpress.org/core/2016/07/07/native-fonts-in-4-6/) Wordpress switched to native fonts for their admin UI.  This documents their font stack.
* 2015-11-12 [Using System Fonts in Web Design: A Quick and Practical Guide](https://www.smashingmagazine.com/2015/11/using-system-ui-fonts-practical-guide/)
* 2015-10-21 [System Shock](https://medium.design/system-shock-6b1dc6d6596f) Discussion by medium.com on their use of system fonts for their web UI (they use a custom web font for their article text).
