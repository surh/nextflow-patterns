# Problem
You need to pass a variable number of files to a process, and
use use a glob wildcard to do it, but some entries of
your input channel have only one file. This causes the wildcar to
be interpreted literally instead of as a glob.

# Solution

Add some text before the extension, i.e. use `file("in*.txt")` instead
of `file("*.txt")`

```java
input:
tuple id, file("in*.txt") from FILES
```

# Run

Set up the example by creating some files with

```bash
mkdir input
mkdir input/dir1 input/dir2
echo 'dir1/a' > input/dir1/a
echo 'dir1/b' > input/dir1/b
echo 'dir1/c' > input/dir1/c
echo 'dir2/a' > input/dir2/a
echo 'dir2/b' > input/dir2/b
```

The example simply concatenates files with the same name

Run the example with

```bash
nextflow run single_file_wildcard.nf
```

check the output wit:

```bash
head output/*.txt
```
