SHELL := /bin/bash
all: watch
theme = sky
cmd = pandoc --css reveal.js/dist/theme/$(theme).css --css slides.css \
				-s -i -t revealjs --slide-level=2\
				-V theme:$(theme) -V revealjs-url:reveal.js \
				-V slideNumber:true \
				slides-generated.md -o

clean:
	@rm -rf slides-dev.html slides-generated.md

clean_all: clean
	@rm -f bin/static-web-server

sub: clean
	@./bin/substitute slides.md slides-generated.md

develop: sub
	$(cmd) slides-dev.html
	@rm -f slides-generated.md

release: sub
	$(cmd) slides.html --embed-resources --standalone
	@rm -f slides-generated.md

update_reveal:
	git submodule init
	git submodule sync
	git submodule update

download_server:
	FORCE_DOWNLOAD=true NO_SERVE=true ./bin/serve

serve:
	./bin/serve -d . -p 3333

watch:
	./bin/rebuild -s

serve_on_calculon:
	ssh -t -t calculon -L 3333:localhost:3333 "cd ~/workspace/self_hosting_slides && make serve"
