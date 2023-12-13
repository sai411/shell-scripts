if [[ $# -eq 1 ]]
then
   path=$(which $1)
   if [[ $? -eq 0 ]]
   then 
     echo "$1 was available at $path"
   else
     echo "$1 is not available"
   fi
else
  exit
fi
