#! /usr/bin/awk -f

BEGIN{
  FS="|"
}
{
  print $7
}
END{
}
