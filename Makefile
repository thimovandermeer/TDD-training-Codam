SUBPROJECTS = libft

TASKS = all test clean subclean

$(TASKS):
	for dir in $(SUBPROJECTS); do $(MAKE) -C $$dir $@; done

distclean: subclean
	rm -fr deps/build deps/include deps/lib

deps: googletest

.PHONY: googletest

googletest:
	@cmake >/dev/null 2>&1 || { echo "Error: cmake is not installed."; exit 1; }
	@[ -f deps/googletest/CMakeLists.txt ] || { echo "Error: No Googletest sources present. Make sure git submodules are initialized (\`git submodule update --init\`)"; exit 1; }
	@echo "Building Googletest"
	@cmake -S deps/googletest -B deps/build/googletest
	@cmake --build deps/build/googletest
	@echo "Installing Googletest to deps/"
	@cmake --install deps/build/googletest --prefix `pwd`/deps
