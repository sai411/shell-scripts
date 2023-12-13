if [[ !  -d "/root/Users_Login_Data/" ]]
then
   mkdir -p /root/Users_Login_Data/
fi

file_name="Users_$(date +%m)-$(date +%d)-$(date +%y)-$(date +%H)-$(date +%M).txt"

$(who --ips | awk '{print $1, $3, $4, $5}' >> /root/Users_Login_Data/$file_name)
