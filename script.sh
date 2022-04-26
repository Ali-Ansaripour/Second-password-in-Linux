#! /bin/bash
# Ali Ansaripour

reallpass="f2dc0119c9dac46f49d3b7d0be1f61adf7619b770ff076fb11a2f61ff3fcba6b68d224588c4983670da31b33b4efabd448e38a2fda508622cc33ff8304ddf49c"  #sha512

# Trap for Ctrl + C * Ctrl + C valua : 2
trap '' 2 # ---> Disable

read -t 15 -s -p "Enter the secend password :" pass   # Close after 15s
hashpass=$(echo $pass | sha512sum | cut -c 1-128)   # Return the input pass tp sha512
if [[ $reallpass == $hashpass ]]
 then 
 echo " Good, Wellcome :D " 
 echo "Wait 10s to Log-In... "
 sleep 10
 clear
else 
 echo " Loser :D "
 sleep 30 
 exit 
fi

trap 2  # Trap for Ctrl + C ---> Enable


# Ali Ansaripour
