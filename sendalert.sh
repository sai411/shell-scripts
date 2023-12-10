# send email when free ram is 20% left

available=$(free -h | awk 'NR>1 {print $7}' | cut -d'M' -f1)

total=$(free -h | awk 'NR==2 {print $2}' | cut -d'M'  -f1)


percent=$((available * 100  / total))
body="YOU RAM IS LOW"
recipent="sk1439691@gmail.com"
if [[ $percent -le 20 ]]
then 
	mail -s "ALERTTTTTTTTTTT!!!!! please check!!!" $recipent <<< "$body"
	if [[ $? == 0 ]] 
	then 
	  echo "mail sent successfully"
	else
	   echo "mail not sent"
	fi
fi
