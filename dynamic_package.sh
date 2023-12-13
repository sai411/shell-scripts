search() {

   echo "seraching this package : $package"
   apt search $package

}
install()
{

  echo "installing this package: $package"
  apt install $package

}
delete(){
 
  echo "deleting package: $package"
  apt remove $package
}

select opt in search install delete quit; do
   case $opt in
      "search")
       read package
       search
       ;;
      "install")
       read package
       install
       ;;
      "delete")
       read package
       delete
       ;;
      "quit")
      break
      ;;
       *)
      invalid $opt
      ;;
   esac
done     
