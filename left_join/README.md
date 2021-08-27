# Problem
I want to do a left join between channels. Currently join only does
an inner join and `remainder: true` returns null for the unmatched keys.

As an example, for channel 1:

```
[ ['a', 1], ['b', 1], ['a', 2], ['b', 2] ]
```

And channel 2:

```
[ ['a', 'addA'], ['b', 'addB'] ]
```

I want a new channel with:

```
[['a', 1, 'addA'],
 ['b', 1, 'addB'],
 ['a', 2, 'addA'],
 ['b', 2, 'addB] ]
```

# Solution
Use combine with the `by: <id_index>` tag. Thanks to Kade Pettie for
the solution.

# Execute
Run with:
```bash
nextflow run left_join.nf
```
