service_name=$1
if systemctl status $service_name | grep -q "active (running)"; then
  echo "The service $service_name is running."
else
  echo "The service $service_name is not running starting it."
  systemctl start $service_name
fi
