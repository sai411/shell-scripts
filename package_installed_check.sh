# check s/w is installe dor not

dpkg -l | grep -wq $1
if [[ $? == 0 ]] 
then
	echo "package $1 is installed"
else
	echo "$1 is not installed"
fi
