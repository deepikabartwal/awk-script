#! /usr/bin/awk -f

BEGIN{
  FS="|"
  leastpopulous=0
  country=""
}

(NR==1){
  leastpopulous=$3
  country=$1
}

($3<leastpopulous){
  leastpopulous=$3
  country=$1
}

END{
  print country
}
