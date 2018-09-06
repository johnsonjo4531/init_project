# Competitive Programming Starters

Competitive programming starter code (for bash like shells) to get you pumping out code fast for your next competition.

## Use

After setup (which is below) type `cpstarter <foldername>` to import a starter template from the given `<foldername>` where `<foldername>` is one of the following: `node`, `c++`, or `java`. `cpstarter <foldername>` will copy all files in the given `<foldername>` to your current working directory (the directory your terminal is in). Generally after that you just need to to put test case inputs in `in.txt` write your code in the corresponding script file and run `make` in the same directory to run your code with input.


## Setup

Git clone this repo in your home directory (with the name `competitive_programming_starters`) and add the following code snippet to your bash profile

```bash
# Copies files from a competitive programming starter folder into the current working directory.
cpstarter () {
  cp -i ~/competitive_programming_starters/$1/* .
}
```
