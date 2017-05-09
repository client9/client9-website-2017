---
date: 2017-05-08
title: git undo last commit
draft: true
---

## How do I change the last commit message?

Again, if you did not push, then:

```bash
git commit --amend -m "New commit message"
```

See [Stack Overflow](http://stackoverflow.com/questions/179123/edit-an-incorrect-commit-message-in-git) or [GitHub](https://help.github.com/articles/changing-a-commit-message) for more details.

## How do I undo the last commit? (if you did not push).

If you did `git push` then its best just to correct your mistake manually and repush.  Git does allow for repository surgery but it is not recommended and should only be used for critical security problems (e.g. I committed secret keys).

If you did not push, then, this makes it so it never happened and restore everything just as  you never typed `git commit`

```bash
git reset HEAD~1
```

Same as above but also reverts any changes to to file (as you never did the edits)

```bash
git reset --hard HEAD~1
```

See [Stack Overflow](https://stackoverflow.com/questions/927358/how-to-undo-the-last-git-commit) for more details.



