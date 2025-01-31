# pedantic-errors: Make sure compiler does not use compiler extensions and uses only standard C++ features
# std=c++23: Use C++ 2023 standard. For other options see: https://www.learncpp.com/cpp-tutorial/configuring-your-compiler-choosing-a-language-standard/
# -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion: Make the compiler more assertive in showing errors :) 
# -Werror: Make warnings into errors so that they are fixed sooner
export DEFAULT_COMPILER_FLAGS=\
 -pedantic-errors \
 -std=c++23 \
 -Wall -Weffc++ -Wextra -Wconversion -Wsign-conversion \
 -Werror

# ggdb: allows debugging
export DEBUG_COMPILER_FLAGS=-ggdb
# O2: optimization level 2. For other options see: https://www.learncpp.com/cpp-tutorial/configuring-your-compiler-build-configurations/
# DNDEBUG: maybe stands for do not debug?
export RELEASE_DEBUG_FLAGS=-O2 -DNDEBUG

debug:
	$(MAKE) -s build && $(MAKE) compile_debug -s && $(MAKE) -s run

release:
	$(MAKE) -s build && $(MAKE) compile_release -s && $(MAKE) -s run

compile_debug:
	g++ ${DEFAULT_COMPILER_FLAGS} -ggdb main.cpp -o ./build/main.o

compile_release:
	g++ ${DEFAULT_COMPILER_FLAGS} -O2 -DNDEBUG main.cpp -o ./build/main.o

build:
	mkdir -p ./build

run:
	./build/main.o
