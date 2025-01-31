# Init Project script

A project starter to help create new C++ projects (and at some point possibly other projects) using several suggested compiler defaults from learncpp.com. 

## Use

You can also run `init_project` without any foldername and it will guid you through what kind of project your want (you will just need to select project type with a number e.g. 1, and you will need to supply a project_name e.g. my_project).

After installation (which is below) type `init_project <foldername>` to import a starter template from the given `<foldername>` where `<foldername>` is one of the following: `c++`. `init_project <foldername>` will copy all files in the given `<foldername>` to your current working directory (the directory your terminal is in). Generally after that you get instructions on what to do next.


## After install

All you generally have to do after install is cd into your new project and run the `make` command to start it.



## Installation

git clone the repo into any directory on your machine then run install.sh which will add the init_project script to your ~/.local/bin/ directory.

```bash
git clone https://github.com/johnsonjo4531/init_project.git ~/init_project/
bash ~/init_project/install.sh
```
