#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  area=$4
  totalarea+=area
  arableland=(($4*$12)/100)
  totalarableland+=arableland
}

END{
  print ((totalarableland/totalarea)*100)
}
