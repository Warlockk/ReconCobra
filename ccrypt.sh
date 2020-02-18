#!/bin/bash

red="\e[0;31m"
new="\e[0;36m"
green="\e[0;32m"
off="\e[0m"

 echo "";
 echo -e "$red [$green+$red]  1:$off Crypt Module "; 
 echo -e "$red [$green+$red]  2:$off Decrypt Module ";
 echo "";
 echo -ne "$red [$green+$red] Select An Option:$off: " ;
 read Option
     if [ $Option -eq "1" ]
then
 echo -ne "$red [$green+$red] Enter File Path:$off: " ;
 read filepath
    crypt < $filepath > $filepath.x
fi

 if [ $Option -eq "2" ]
then
 echo -ne "$red [$green+$red] Enter File Path:$off: " ;
 read filepath
    crypt < $filepath.x > $filepath
fi
