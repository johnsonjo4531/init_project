# Competitive Programming Starters

Competitive programming starter code (for bash like shells) to get you pumping out code fast for your next competition.

## Use

After setup (which is below) type `cpstarter <foldername>` to import a starter template from the given `<foldername>` where `<foldername>` is one of the following: `node`, `c++`, or `java`. `cpstarter <foldername>` will copy all files in the given `<foldername>` to your current working directory (the directory your terminal is in). Generally after that you just need to to put test case inputs in `in.txt` write your code in the corresponding script file and run `make` in the same directory to run your code with input.


## Setup

Git clone this repo in your home directory (with the name `competitive_programming_starters`) and add the following code snippet to your bash profile

```bash
# Copies files from a competitive programming starter folder into the current working directory.
cpstarter () {
  dirs=($(basename -a ~/competitive_programming_starters/*/))
  
  if [ -z "$1" ]; then
    echo "Please choose from these options:"
    select opt in "${dirs[@]}"; do
      if (( REPLY > 0 && REPLY <= ${#dirs[@]} )); then
        cp -ri ~/competitive_programming_starters/"$opt"/* .
        break
      else
        echo "Invalid option"
      fi
    done
  elif [[ " ${dirs[@]} " =~ " $1 " ]]; then
    cp -ri ~/competitive_programming_starters/"$1"/* .
  else
    echo "Directory $1 does not exist in ~/competitive_programming_starters/"
  fi
}
```
