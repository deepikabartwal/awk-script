#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

($1~/^O/ && $2~/^20/) {
  print $0
}
