$(find /root/Users_Login_Data -iname "*.txt"  -mmin +1 >> /root/delete.log)

$(find /root/Users_Login_Data -iname "*.txt"  -mmin +1 -exec rm -rf {} \;)

