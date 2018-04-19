sourcefile = script
in = in.txt

run_input: run_and_clean < $(in)

run_and_clean: compile_run clean

compile_run:
	make compile && make run

run:
	java $(sourcefile)

compile: $(sourcefile).java
	javac $(sourcefile).java

clean:
	rm $(sourcefile).class