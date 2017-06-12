
HUGO=./bin/hugo
MINIFY=./bin/minify
MISPELL=./bin/misspell

run: setup ## start live server
	${HUGO} -t client9 -v -D -E -F --watch server

build: setup ## build live version
	rm -rf public
	./scripts/build.sh

draft: setup ## build version with drafts
	rm -rf public
	${HUGO} -t client9 -v -D -E -F --baseURL http://www-draft.client9.com
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public

clean: ## do clean
	rm -rf public bin
	git gc --aggressive

lint:  ## do lints
	./scripts/lint.sh

./bin/hugo:
	./scripts/setup.sh

setup: hooks ./bin/hugo  ## install hugo and other tools needed

# https://www.client9.com/automatically-install-git-hooks/
.git/hooks/pre-commit: scripts/pre-commit.sh
	cp -f scripts/pre-commit.sh .git/hooks/pre-commit
.git/hooks/commit-msg: scripts/commit-msg.sh
	cp -f scripts/commit-msg.sh .git/hooks/commit-msg
hooks: .git/hooks/pre-commit .git/hooks/commit-msg ## install git hooks

.PHONY: hugo hooks lint clean setup compile run public

# https://www.client9.com/self-documenting-makefiles/
help:
	@awk -F ':|##' '/^[^\t].+?:.*?##/ {\
	printf "\033[36m%-30s\033[0m %s\n", $$1, $$NF \
	}' $(MAKEFILE_LIST)
.DEFAULT_GOAL=help
.PHONY=help

