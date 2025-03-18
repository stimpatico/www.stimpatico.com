.PHONY: all clean static pages sitemap

all: clean static pages sitemap

clean:
	@echo "Cleaning build directory"
	rm -v -r -f build

static:
	@echo "Copying static files"
	mkdir -v -p build
	cp -v -r static/* build

pages:
	@echo "Building pages"
	mkdir -v -p build
	sh scripts/build.sh

sitemap:
	@echo "Creating sitemap"
	mkdir -v -p build
	sh scripts/sitemap.sh

template:
	@echo "Extracting pristine template"
	mkdir -v -p templates
	pandoc --print-default-template=html5 > templates/template.html

serve:
	@echo "Running test server"
	python -m http.server --directory build 8000
