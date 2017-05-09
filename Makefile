
run: hugo
	find . -name '*.md' | grep -v 2016-08-21 | xargs misspell
	./hugo -t client9 -v -D -E -F --watch server --bind 0.0.0.0

compile: hugo
	find . -name '*.md' | grep -v 2016-08-21 | xargs misspell
	./hugo -t client9
	minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public
	./hugo -t client9 -v -D -E -F -d public-draft --baseURL http://www-draft.client9.com
	minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public-draft public-draft

clean:
	rm -rf public public-draft
	git gc --aggressive

hugo:
	./download-hugo.sh	
