
process publish_subdir{
  publishDir 'output',
    pattern: 'dir/subdir',
    saveAs: {'results'}
  
  output:
  path "dir/subdir"

  """
  mkdir dir
  mkdir dir/subdir
  """

}
