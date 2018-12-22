#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  print $1 "," ($3*$10)/100
}
