params.flag = false

process flag_param{
  input:
  val flag from params.flag

  exec:
  if(flag){
    println "Flag was true"
  }else{
    println "Flag was false"
  }
}
