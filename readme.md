Add these folders to your home directory as well as the following code snippet to your bash profile

```bash
# competitive programming python like cpp file runner
cpstarter () {
  cp -i ~/competitive_programming_starters/$1/* .
}
```

then type `cpstarter <foldername>` to import a starter template where `<foldername>` is one of the following: `node`, `c++`, or `java`.
