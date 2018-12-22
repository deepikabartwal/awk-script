#! /usr/bin/awk -f

BEGIN{
  FS="|"
  mortality_rate=0
  country=""
}

($9 > 20000) {
  if(mortality_rate < $8){
    mortality_rate=$8
    country=$1
  }
}

END{
  print country
}
