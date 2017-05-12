---
date: 2017-05-08
title: git undo last commit
draft: true
---

Ooops, I did it again. Here's how to undo your last git commit.<!--more-->

If you did not `git push`, then you have a easy choice on how much you want to undo:

* [Keep changes, just modify the commit message](#messageonly)
* [Undo commit, but keep changes](#uncommit)
* [Undo the commit, undo the changes](#checkout)

If you did do a `git push` then it is more work:

* Undo manually and repush.  Boring but true.
* Use a branch, checkout to previous commit, then push the branch to push an undo (needs more explanation).
* Repository surgery.  You can purge a commit from the remote git repo but it's tricky and should only be used for critical security problems (e.g. secret keys keys were added to the remote repo).  


## How do I just change the last commit message? {#messageonly}

If you didn't push, and just need to change the last commit message, use `--amend`

```bash
git commit --amend -m "New commit message"
```

See [Stack Overflow](http://stackoverflow.com/questions/179123/edit-an-incorrect-commit-message-in-git) or [GitHub](https://help.github.com/articles/changing-a-commit-message) for more details.

## How do I undo the last commit and but keep the changes locally {#uncommit}

This is useful when you forgot to add a file or what to make a few more edits.  If you did not push, then, this makes it so it never happened and restore everything just as you never typed `git commit`

```bash
git reset HEAD~1
```

## Undo the commit and discard the changes {#checkout}

Same as above but also reverts any changes to to file as if you never did the edits at all.

```bash
git reset --hard HEAD~1
```

See [Stack Overflow](https://stackoverflow.com/questions/927358/how-to-undo-the-last-git-commit) for more details.

