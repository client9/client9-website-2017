
HUGO=./bin/hugo
MINIFY=./bin/minify
MISPELL=./bin/misspell

run: setup 
	${HUGO} -t client9 -v -D -E -F --watch server

public:
	rm -rf public/*
	${HUGO} -t client9
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public

draft:
	rm -rf public/*
	${HUGO} -t client9 -v -D -E -F --baseURL http://www-draft.client9.com
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public

clean:
	rm -rf public bin
	git gc --aggressive

lint:
	./scripts/lint.sh

./bin/hugo:
	./scripts/setup.sh

setup: hooks ./bin/hugo

.git/hooks/pre-commit: scripts/pre-commit.sh
	cp -f scripts/pre-commit.sh .git/hooks/pre-commit
.git/hooks/commit-msg: scripts/commit-msg.sh
	cp -f scripts/commit-msg.sh .git/hooks/commit-msg
hooks: .git/hooks/pre-commit .git/hooks/commit-msg

.PHONY: hugo hooks lint clean setup compile run
