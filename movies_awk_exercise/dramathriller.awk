#! /usr/bin/awk -f

BEGIN{
  FS "|"
  count=0
};

{
  if($5~/Drama/ && /Thriller/){
    count++
    print $1
  }
};

END{
  print "Total movies " count
}
