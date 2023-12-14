curl ifconfig.me
df -h 
free -h
last

$(ls -lt | awk 'NR>1' | tail -n +3 |  awk '{print $NF}' | xargs rm)
