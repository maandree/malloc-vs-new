# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.
.POSIX:

CXX = c++

BIN = malloc new alloca
OBJ = $(BIN:=.o)


all: $(BIN)
$(OBJ):

.cc.o:
	$(CXX) -c -o $@ $< -O0

.o:
	$(CXX) -o $@ $<

clean:
	-rm -f -- *.o $(BIN)

.SUFFIXES:
.SUFFIXES: .o .cc

.PHONY: all clean
