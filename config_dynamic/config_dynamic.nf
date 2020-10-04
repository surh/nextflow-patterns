wait = 25

process dynamic_time {
  input:
  val wait from wait

  """
  sleep $wait
  """
}
