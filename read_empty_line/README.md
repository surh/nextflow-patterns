#Problem
`Reader.readLine()` function returns false if a line is empty,
which ends a while loop.

The solution is to compare to `null`.

# Run
Create input with:
```bash
echo -e "¡\nH\no\nl\na\n\nM\nu\nn\nd\no\n\!" > input.txt
```
Note the two consecutive breaklines between words.

Run with:
```bash
nextflow run read_empty_line.nf
```
and compare with:
```bash
nextflow run fails_read_empty_line.nf
```
