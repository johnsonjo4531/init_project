# Competitive Programming Starters

Competitive programming starter code (for bash like shells) to get you pumping out code fast for your next competition.

## Use

After setup (which is below) type `cpstarter <foldername>` to import a starter template from the given `<foldername>` where `<foldername>` is one of the following: `node`, `c++`, or `java`. `cpstarter <foldername>` will copy all files in the given `<foldername>` to your current working directory (the directory your terminal is in). Generally after that you just need to to put test case inputs in `in.txt` write your code in the corresponding script file and run `make` in the same directory to run your code with input.

You can also run `cpstarter` without any foldername and it will allow you to select the folder to copy from in a list.


## Installation

Git clone this repo in somewhere on your then cd into the cloned repo and run

```bash
cd ~ # or any location really...
git clone https://github.com/johnsonjo4531/competitive_programming_starters.git
cd competitive_programming_starters
bash ./install.sh
```
