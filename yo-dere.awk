#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

($8~/Spanish/){
  print "yo "$1
}

($8~/German/){
  print "Der "$1
}
