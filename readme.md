# a bash script diffing Jupyter notebooks

The notebooks to diff should currently be right at your work directory (relative paths may not work till someone forks and replaces `basename` with something neater, and may end up in overwriting python files having the same base names as the input notebooks). Assumes you already have the [colordiff](https://www.colordiff.org/) utility installed. <br>
Tested on ubuntu. Should likely work on mac too.

### Usage: 

```
./notebooks-diff.sh <notebook1> <notebook2>
```

### License
This code is provided as is without any warranty whatsoever. Licensed under the Apache License 2.0. 

###Contributions welcome:
+ checking the notebook files do exist
+ rooting out the use of `basename`
