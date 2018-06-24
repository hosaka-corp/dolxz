
all:
	$(MAKE) -C bin2h/
	$(MAKE) -C loader/cube
	$(MAKE) -C loader -f Makefile.cube
	gcc main.c -o dolxz -llzma

.PHONY: clean
clean:
	$(MAKE) clean -C bin2h/
	$(MAKE) clean -C loader/cube
	$(MAKE) clean -C loader -f Makefile.cube
	rm -v dolxz
