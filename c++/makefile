sourcefile = script
in = in.txt 

run_input: 
	$(MAKE) -s run_and_clean < $(in)

run_and_clean: 
	$(MAKE) -s compile_run clean

compile_run:
	$(MAKE) -s compile && $(MAKE) -s run

run:
	./build/main.out

compile: 
	g++ $(sourcefile).cpp -std=c++14 -O2 -Wall -o ./build/main.out

clean:
	rm ./build/main.out

