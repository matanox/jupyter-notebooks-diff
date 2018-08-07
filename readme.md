# a bash script diffing Jupyter notebooks

Assumes you have the colordiff utility installed.
The notebooks to diff should currently be right at your work directory (relative paths won't work till someone forks and replaces `basename` with something neater, and may end up in overwriting python files with the same names as the input notebooks).
Tested on ubuntu. Should likely work on mac too.

### Usage: 

```
./notebooks-diff.sh <notebook1> <notebook2>
```

Contributions welcome:
+ checking the notebooks files do exist
+ rooting out the use of `basename`
