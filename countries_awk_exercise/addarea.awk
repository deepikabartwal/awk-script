#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  area=$4
  totalarea+=area
}

END{
  print totalarea
}
