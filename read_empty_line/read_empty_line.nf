my_reader = file("input.txt").newReader()
while( (line = my_reader.readLine()) != null ){
  println line
}
