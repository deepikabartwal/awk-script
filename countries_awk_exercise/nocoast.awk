#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

($6==0){
  print $1
}
