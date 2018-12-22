#! /usr/bin/awk

BEGIN{
  FS="|"
  line=""
};

{
  if($2>=1950 && $2<=1959 && line!~$6){ 
    line= line "\n" $6
  }
};

END{
  print line
}
