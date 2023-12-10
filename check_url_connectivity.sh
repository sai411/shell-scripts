read -p "enter server hostname to cgheck connectivity: " url

echo $url

status_code=$(curl -s  -o /dev/null -w "%{http_code}" $url)
if [[ $status_code == 200 ]] 
then
	echo "connection successfull!!!"
else
	echo "server not reachable"
fi
