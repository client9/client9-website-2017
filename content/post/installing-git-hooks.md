---
Draft: false
Title: Automatically Install Git Hooks
Date: 2017-05-27
---
Improve your CI/CD by installing git hooks automatically.<!--more-->

[Git](https://git-scm.com) has a great system of [hooks](https://git-scm.com/book/en/v2/Customizing-Git-Git-Hooks), where actions are taken:

* after a commit is done, to run static analysis or units
* before the commit message is generated, to provide a commit message template
* after the commit message is finished, to do final validation on the message

Proper use of hooks improves the success rate of pull requests and continuous integration runs.

The only problem is they are optional.  If a fresh clone is done, the hooks are not automatically installed. All the static analysis and unit testing in the world doesn't help if they are not used and run. 

If you use `make`, then you can automatically set up your git hooks by adding some targets:

```make
.git/hooks/pre-commit: scripts/pre-commit.sh
        cp -f scripts/pre-commit.sh .git/hooks/pre-commit
.git/hooks/commit-msg: scripts/commit-msg.sh
        cp -f scripts/commit-msg.sh .git/hooks/commit-msg
hooks: .git/hooks/pre-commit .git/hooks/commit-msg
```

Then in the most common used make command, add a dependency on `hooks`:

```
build: hooks
	go build .  # or whatever
```

Now any time a build is done, the hooks will be set up and installed. If an commit and push happens it's much more likely it will meet your minimal standards. One still needs to redo all these checks at the server level, but having checks done locally will help reduce the number of failed continuous integration runs and rejected pull-requests.  
