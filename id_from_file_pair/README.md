# Problem
I want to process a group of file pairs. File pairs contain ID in name
plus a lot of extra information. I want to get the file pairs AND extract
the ID at the same time.

# Solution
Include all the extra information (potentially with regexpx) in the grouping
key. See glob pattern help [here](https://docs.oracle.com/javase/tutorial/essential/io/fileOps.html#glob).

# Execute
Create input with:
```bash
mkdir input
touch input/s1_a0_b0_R1.fastq input/s1_a0_b0_R2.fastq input/s2_c0_d0_R1.fastq input/s2_c0_d0_R2.fastq
```

Execute with:
```bash
nextflow run id_from_file_pair.nf
```
