# TO check the users having root permissions


user=("sai" "manoj")

per_users=()
non_per=()

read -p "do you want to add any user to the list: " choice
echo $choice

if [[ $choice == "yes" ]]
then
  read -p "add user name:" user_add
  user+=(${user_add})

fi


echo ${user[@]}

for i in "${user[@]}"
do
	var=$(sudo -lU $i)
	na=$(echo ${var} |  cut -d " " -f4,5)
	if [[ $na == "not allowed" ]] 
	then 
	    per_users+=($i)
        else
	    non_per+=($i)
	fi
	
done

if [[ "${#per_users[@]}" -gt 0 ]] 
then
    echo "Non root users '${per_users[@]}'"
fi

if [[ "${#non_per[@]}" -gt 0 ]]
then
    echo "root users '${non_per[@]}'"
fi
