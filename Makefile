
HUGO=./bin/hugo

run:
	find . -name '*.md' | grep -v 2016-08-21 | xargs misspell
	${HUGO} -t client9 -v -D -E -F --watch server --bind 0.0.0.0

compile:
	find . -name '*.md' | grep -v 2016-08-21 | xargs misspell
	${HUGO} -t client9
	minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public
	${HUGO} -t client9 -v -D -E -F -d public-draft --baseURL http://www-draft.client9.com
	minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public-draft public-draft

clean:
	rm -rf public public-draft
	rm -rf bin
	git gc --aggressive

hugo:
	./download-hugo.sh 0.20.7
.PHONY: hugo

