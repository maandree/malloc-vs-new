# Copying and distribution of this file, with or without modification,
# are permitted in any medium without royalty provided the copyright
# notice and this notice are preserved.  This file is offered as-is,
# without any warranty.


.PHONY: all
all: bin/malloc bin/new


bin/%: src/%.cc
	@mkdir -p bin
	$(CXX) -O0 -o $@ $^

.PHONY: clean
clean:
	-rm -r bin

