#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
};

{
  if($2>=2000){
    count++
  }
};

END{
  print count
}
