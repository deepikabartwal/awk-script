#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  if($9~/Hong Kong/ && $10>=8 && $10<9){
    print $1
  }
}
