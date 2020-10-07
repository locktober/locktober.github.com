.PHONY: preview build

# runs local 127.0.0.1:4000 server for preview:
build: favicon.ico
	jekyll build

preview:
	bundle exec jekyll serve

favicon.ico: favicon.ppm
	ppmtowinicon -output favicon.ico favicon.ppm

favicon.ppm: assets/img/2020/Locktober_logo_pumpkin_just_pumpkin_16x16.ppm
	cp -v "$<" "$@"
