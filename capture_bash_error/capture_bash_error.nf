IN = Channel.from(1,2,3)

process capture_error{
  input:
  val x from IN

  output:
  file "res.txt"

  """
  { perl ${workflow.projectDir}/error.pl; } || { touch res.txt; }
  """
}
