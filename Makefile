FILES = README.md icon.png manifest.json jquery.js content-script.js

.PHONY: dist
default:

dist:
	rm -rf dist
	mkdir -p dist/skip-gunosy
	cp $(FILES) dist/skip-gunosy/
	cd dist && zip -r skip-gunosy.zip skip-gunosy
