
HUGO=./bin/hugo
MINIFY=./bin/minify
MISPELL=./bin/misspell

run:
	${HUGO} -t client9 -v -D -E -F --watch server --bind 0.0.0.0

compile: lint
	${HUGO} -t client9
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public
	${HUGO} -t client9 -v -D -E -F -d public-draft --baseURL http://www-draft.client9.com
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public-draft public-draft

clean:
	rm -rf public public-draft
	rm -rf bin
	git gc --aggressive

lint:
	find content -name '*.md' | grep -v 2016-08-21 | xargs ${MISSPELL} -error


setup:
	tail +2 setup.sh | xargs -P4 -ICMD /bin/sh -exc CMD 

.PHONY: hugo lint clean setup compile run


