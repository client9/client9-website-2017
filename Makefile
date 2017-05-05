
run:
	hugo -t client9 --watch server --bind 0.0.0.0

compile:
	hugo -t client9
	minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public public
	hugo -t client9 -D -E -F -d public-draft
	minify --html-keep-whitespace --html-keep-end-tags --html-keep-document-tags -r -o public-draft public-draft

clean:
	rm -rf public public-draft
	git gc --aggressive

