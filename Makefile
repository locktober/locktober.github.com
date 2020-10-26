.PHONY: preview build build-with-drafts preview

# runs local 127.0.0.1:4000 server for preview:
build: favicon.ico
	bundle exec jekyll build

build-with-drafts: #favicon.ico
	bundle exec jekyll build --drafts

preview:
	bundle exec jekyll serve --drafts
	#bundle exec jekyll serve

favicon.ico: favicon.ppm
	ppmtowinicon -output favicon.ico favicon.ppm

favicon.ppm: assets/img/2020/Locktober_logo_pumpkin_just_pumpkin_32x32.ppm
	cp -v "$<" "$@"
