.PHONY: clean build version

ALL:
	git submodule update --init
	cd libmill && ./autogen.sh && ./configure prefix=`pwd`/../deps && make && make install

build:
	git submodule update --init

clean:
	rm -fr build node_modules

version: ; @echo $(MAKE_VERSION)
