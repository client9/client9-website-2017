
run:
	hugo -t client9 --watch server --bind 0.0.0.0

compile:
	hugo -v -t client9

clean:
	rm -rf public
	git gc --aggressive

