publish:
	rm -f dist/*
	cp assets/* dist
	emacs -batch -l build.el
	[ -e release.sh ] && sh release.sh
