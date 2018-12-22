#! /usr/bin/awk -f

BEGIN{
  FS="|"
  director=""
}

($8~/Korean/ && director!~$6){
  director=$6"\n"director
}

END{
  print director
}
