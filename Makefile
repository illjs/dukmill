.PHONY: clean build

ALL:
	git submodule update --init

build:
	git submodule update --init

clean:
	rm -fr build node_modules
