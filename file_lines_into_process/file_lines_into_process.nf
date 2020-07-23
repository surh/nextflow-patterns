
IN = Channel.from(file("input.txt").readLines())

process p1{
    input:
    val line from IN

    output:
    tuple n_cols, new_str into OUT

    exec:
    cols = line.split("\t")
    n_cols = cols.size()
    new_str = 'n_cols: ' + n_cols + "\t" +
        cols[2] + ':' + cols[1] + ':' + cols[0]

}

OUT.subscribe{ println it }

