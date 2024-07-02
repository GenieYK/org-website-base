publish:
	rm -f dist/*
	cp assets/* dist
	touch source/*
	emacs -batch -l build.el
	[ -e release.sh ] && sh release.sh
