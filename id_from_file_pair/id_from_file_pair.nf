CH = Channel.fromFilePairs("input/*{_[a-z,0-9]*_[a-z,0-9]*_R1,_[a-z,0-9]*_[a-z,0-9]*_R2}.fastq")

process id_from_file_pair{

 input:
 tuple id, files from CH

 exec:
 println "======"
 println id
 println files[0]
 println files[1]
 println "======"
}

