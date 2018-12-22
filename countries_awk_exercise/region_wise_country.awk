#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  country[$1]=$2
  region[$2]
}

END{
  for(reg in region){
    print reg
    print "-----------------------------\n\n"
    for(var in country){
      if(country[var]==reg)
        print var
    }
    print "\n\n"
  }
}
