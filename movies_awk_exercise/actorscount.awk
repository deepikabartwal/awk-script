#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
}

{
  {gsub(", ", "\n", $7)}{
    !a[$7]++
  }
}

END{
  print NR
}
