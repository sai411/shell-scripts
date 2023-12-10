user=manoj

new_pass="123456789"

echo "$user:$new_pass" | chpasswd
chage -d 0 $user
echo $?

