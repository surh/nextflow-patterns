params.flag = false

process flag_param{
  input:
  val flag from Channel.from(params.flag)

  exec:
  println "======$flag======"
}
