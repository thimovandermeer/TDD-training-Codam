# Name of the test executable to build
OUT = test_libft

# Management of dependencies: third party (Googletest) and libft

DEPS_INCLUDE_FOLDERS = ../../deps/include ../src
DEPS_LIB_FOLDERS = ../../deps/lib ../src
DEPS_LIBS = gmock_main gmock gtest stdc++ ft

# Compiler to use
CC = gcc
# C++ version
CXX_STD_VERSION = c++20
CC_FLAGS = -Wall -Wextra -Werror

SRC = $(wildcard *.cpp)
OBJ = $(SRC:.cpp=.o)

all: $(OUT)

test: all
	./$(OUT)

$(OUT): $(OBJ)
	$(CC) -o $@ $(foreach folder,$(DEPS_LIB_FOLDERS),-L$(folder)) $(foreach lib,$(DEPS_LIBS),-l$(lib)) $^

%.o: %.cpp
	$(CC) $(foreach folder,$(DEPS_INCLUDE_FOLDERS),-I$(folder)) --std=$(CXX_STD_VERSION) $(CC_FLAGS) -c -o $@ $<

clean:
	@rm -f $(OUT) $(OBJ)

distclean: clean
