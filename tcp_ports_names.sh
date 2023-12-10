#ports=$(netstat -tlnp | awk 'NR>2 {print $4}' | cut -d: -f2)
#names=$(netstat -tlnp | awk '$1 == "tcp" {print $4 " "  $7}' | cut -d" " -f2 | cut -d/ -f2)
data=$(netstat -tlnp | awk '$1 == "tcp" {print $4 " "  $7}' | cut -d: -f2)
echo $data
