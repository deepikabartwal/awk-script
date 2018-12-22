#! /usr/bin/awk -f

BEGIN{
  FS="|"
}
{
  print $0
}
END{
} 
