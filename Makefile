compile:
	gprbuild -Pbrowser.gpr -j0 -cargs $(CFLAGS) -largs $(LDFLAGS)

run:
	./build/browser
