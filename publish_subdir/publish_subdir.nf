
process publish_subdir{
  publishDir 'output',
    pattern: 'dir/subdir',
    saveAs: {"$x"}

  input:
  val x from Channel.from("a", "b", "c")
  
  output:
  path "dir/subdir"

  """
  mkdir dir
  mkdir dir/subdir
  touch dir/subdir/$x
  """

}
