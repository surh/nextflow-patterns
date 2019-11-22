# Problem
A process produces output in `dir/subdir`.
I have defined `publishDir "outdir"`.
I want to save each `dir/subdir` in `outdir/`
while renaming subdir dynamically.

# Execute
Run pipeline with:

```bash
nextflow run publish_subdir
```
