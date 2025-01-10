/** @file
 * Unit tests for the character based routines of libft, such as isalpha, isdigit, etc
 */

// Include the Google test main header file, pulling in the entire framework
#include <gtest/gtest.h>

// Include your libft's header file containing the character-based functions.
// As the `libft` library is in C, and we're compiling the tests in C++, `extern "C"` trick is needed
// so that C++ code can look up C symbols. (see also https://www.geeksforgeeks.org/extern-c-in-c/)
extern "C" {
#include <libft.h>
}

TEST(CharFunctionsTest, isalpha) {
  EXPECT_EQ(0, ft_isalpha('0'));
}
