#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  literate_people[$1]=(($3*$10)/100)
  country[$1]=$2
  regions[$2]
  population[$1]=$3
}

END{
  for(reg in regions){
    print "\n\n------------" reg "-----------\n\n"
    for(count in country) 
      if(country[count]==reg){
        regionltppl+=literate_people[count]
        regpopltion+=population[count]
      }
      print ((regionltppl/regpopltion)*100)
      regionltppl=0
      regpopltion=0
    }
  }
