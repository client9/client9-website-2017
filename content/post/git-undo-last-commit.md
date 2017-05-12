---
date: 2017-05-08
title: git undo last commit
draft: true
---

Ooops, I did it again. Here's how to undo your last git commit.<!--more-->

If you did not `git push` it's mostly easy and you have a few choice on how much you want to undo (see below).

If you did `git push` then its best just to correct your mistake manually and repush.  Git does allow for repository surgery but it is not recommended and should only be used for critical security problems (e.g. secret keys keys were added to the remote repo).

## How do I just change the last commit message?

If you didn't push, and just need to change the last commit message, use `--amend`

```bash
git commit --amend -m "New commit message"
```

See [Stack Overflow](http://stackoverflow.com/questions/179123/edit-an-incorrect-commit-message-in-git) or [GitHub](https://help.github.com/articles/changing-a-commit-message) for more details.

## How do I undo the last commit and but keep the changes locally.

This is useful when you forgot to add a file or what to make a few more edits.  If you did not push, then, this makes it so it never happened and restore everything just as you never typed `git commit:

```bash
git reset HEAD~1
```

### Undo the commit and discard the changes.

Same as above but also reverts any changes to to file as if you never did the edits at all.

```bash
git reset --hard HEAD~1
```

See [Stack Overflow](https://stackoverflow.com/questions/927358/how-to-undo-the-last-git-commit) for more details.



