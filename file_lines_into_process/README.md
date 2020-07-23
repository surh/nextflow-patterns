# Problem
I want to process a file line by line, but I wat the processing
to happen inside a nextflow process with once instance per line.

This can be accomplished with the splitCsv method, however if the
file needs to be processed this processing normally happens in
a closure outside of a process and executor. This method would
also allow you to deal with variable length files.

# Execute
To run the example you should have a file `input.txt` in the
current directory. You can see its content with:
```bash
 % more input.txt 
row1.col1       row1.col2       row1.col3
row2.col1       row2.col2       row2.col3
```

Run the example with the command below, the `-ansi-log false` part is simply
to show the output in the example.
```bash
nextflow run file_lines_into_process.nf -ansi-log false
```

You should see something like:
```bash
[3, n_cols: 3   row2.col3:row2.col2:row2.col1]
[3, n_cols: 3   row1.col3:row1.col2:row1.col1] 
```
