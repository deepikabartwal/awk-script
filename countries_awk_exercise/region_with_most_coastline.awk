#! /usr/bin/awk -f

BEGIN{
  FS="|"
  region_with_most_coastline=""
  mostcoastline=0
}

{
  area[$2]+=$4
  coastarea[$2]+=(($4*$6)/area[$2])
}

END{
  for(region in coastarea){
    region_coast=coastarea[region]
    if(mostcoastline < region_coast){
      mostcoastline=region_coast
      region_with_most_coastline=region
    }
  }
  print region_with_most_coastline
}
