#! /usr/bin/awk -f

BEGIN{
  FS="|"
  mostpopulous=0
  country=""
}

($3>mostpopulous) {
  mostpopulous=$3
  country=$1
}

END{
  print country
}
