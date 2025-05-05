CXX = g++
CXXFLAGS = -std=c++20 -Wall -Wextra -Werror

# Paths
GTEST_DIR = ../../deps/googletest
GTEST_BUILD_DIR = $(GTEST_DIR)/build
GTEST_INCLUDE = $(GTEST_DIR)/googletest/include
GTEST_LIB_DIR = $(GTEST_BUILD_DIR)/lib

# Include & lib paths
INCLUDES = -I../../deps/include -I../src -I$(GTEST_INCLUDE)
LIB_DIRS = -L../../deps/lib -L../src -L$(GTEST_LIB_DIR)

# Libraries to link
LIBS = -lgmock_main -lgmock -lgtest -lstdc++ -lft

# Test source files
TESTS = test_char_functions.cpp
OBJS = $(TESTS:.cpp=.o)
TARGET = run_tests

.PHONY: all clean gtest clean-gtest test

all: gtest $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(OBJS) $(LIB_DIRS) $(LIBS) -o $@

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c $< -o $@

gtest:
	@echo "🔧 Building Googletest..."
	@mkdir -p $(GTEST_BUILD_DIR)
	cd $(GTEST_DIR) && \
	cmake -S . -B build -DCMAKE_BUILD_TYPE=Release && \
	cmake --build build

clean:
	rm -f $(OBJS) $(TARGET)

clean-gtest:
	rm -rf $(GTEST_BUILD_DIR)

test: all
	@echo "🚀 Running tests..."
	./$(TARGET)
