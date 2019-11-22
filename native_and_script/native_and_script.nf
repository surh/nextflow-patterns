process native_and_script{
  publishDir "output",
    saveAs: {"${num}.txt"}

  input:
  val num from Channel.from(1,2,3,4)
  
  output:
  path ".command.out"

  exec:
  println num
  num2 = num + 1

  script:
  """
  echo "Number: $num, Number + 1 = $num2"
  """
}
