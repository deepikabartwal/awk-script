#! /usr/bin/awk

BEGIN{
    FS="|"
  }
  {
    split($7,actor,", ")
    for(i=1;i<=length(actor);i++){
        totalactors[actor[i]]="amma"
      }
    }
END{
  print length(totalactors)
  }
