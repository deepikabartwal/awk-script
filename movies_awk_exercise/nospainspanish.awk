#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
}

{
  if($8~/Spanish/ && $9!~/Spain/){
    count++
  }
}

END{
  print count " Spanish movies not from Spain"
}
