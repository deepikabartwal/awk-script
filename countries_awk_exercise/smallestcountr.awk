#! /usr/bin/awk -f

BEGIN{
  FS="|"
  area=0
  country=""
}

(NR==1){
  area=$4
  country=$1
}

($4<area){
  area=$4
  country=$1
}

END{
  print country
}
