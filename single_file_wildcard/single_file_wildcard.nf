IN1 = Channel.fromPath("input/dir1/*")
  .map{filename -> tuple(filename.name, file(filename))}

IN2 = Channel.fromPath("input/dir2/*")
  .map{filename -> tuple(filename.name, file(filename))}

FILES = IN1.mix(IN2).groupTuple()


process stage_files{
  publishDir "output"

  input:
  tuple id, file("in*.txt") from FILES

  output:
  file "${id}_final.txt"

  """
  cat *.txt > ${id}_final.txt
  """
}

