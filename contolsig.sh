reset() {
   while true
   do
     echo "Running"
     read -p "provide input: " var
     
     if [[ $var == "EXIT" ]]  
     then
	    exit 
     fi
    
   done
}

trap reset SIGINT SIGTSTP
reset
