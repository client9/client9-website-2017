
HUGO=./bin/hugo
MINIFY=./bin/minify
#MINIFY=minify

run:
	${HUGO} -t client9 -v -D -E -F --watch server --bind 0.0.0.0

compile: lint
	find . -name '*.md' | grep -v 2016-08-21 | xargs misspell -error
	${HUGO} -t client9
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public
	${HUGO} -t client9 -v -D -E -F -d public-draft --baseURL http://www-draft.client9.com
	${MINIFY} --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public-draft public-draft

clean:
	rm -rf public public-draft
	rm -rf bin
	git gc --aggressive

lint:
	find . -name '*.md' | grep -v 2016-08-21 | xargs misspell -error
setup:
	./godownloader-hugo.sh 0.20.7
	go get github.com/client9/s3push
	go get github.com/tdewolff/minify/cmd/minify
#	./download-minify.sh

.PHONY: hugo lint clean setup compile run


