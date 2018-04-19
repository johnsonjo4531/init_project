sourcefile = script
in = in.txt 

run_input: run_and_clean < $(in)

run_and_clean: compile_run clean

compile_run:
	make compile && make run

run:
	./$(sourcefile).out

compile: $(sourcefile)
	g++ $(sourcefile).cpp -std=c++14 -o $(sourcefile).out

clean:
	rm $(sourcefile).out

