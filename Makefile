.DEFAULT_GOAL := build


build:
	@echo build
	docker run --rm -v //$$(PWD):/srv/jekyll -it jekyll/builder yarn build

build-only:
	@echo build
	docker run --rm -v //$$(PWD):/srv/jekyll -it jekyll/builder bundle exec jekyll build

serve:
	@echo serve
	bundle exec jekyll serve --livereload

