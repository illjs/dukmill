.PHONY: clean build version dm

ALL:
	git submodule update --init
	cd libmill && ./autogen.sh && ./configure prefix=`pwd`/../deps && make && make install
	gcc -std=c99 -o dm -Ideps/include deps/include/duktape.c -Wall -fstrict-aliasing -fomit-frame-pointer dm.c -lmill

build:
	git submodule update --init

clean:
	rm -fr build node_modules

version: ; @echo $(MAKE_VERSION)

dm:
	gcc -std=c99 -o dm -Ideps/include deps/include/duktape.c -Wall -fstrict-aliasing -fomit-frame-pointer dm.c -lmill
