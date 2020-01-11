IN = Channel.from(tuple(tuple('A', 'file1', 'file2'), tuple('B', 'file3', 'file4')))

IN.map{vec -> tuple(tuple(vec[0], vec[1]), tuple(vec[0], vec[2]))}.flatten().collate(2).subscribe{println it; println "======"}
