#/bin/bash

read -p "Introdueix el nom d'un usuari: " usuari


echo -e "Escull opcio \n1.Drets d'administrador \n2.Usuari existent \n3.Ruta personal valida"
read -p "Introdueix una opcio: " opcio

case $opcio in
	1)
		 
	;;
	2)
		cut -d ":" -f 1 /etc/passwd > passwd.txt
		valid=0
 		while read linea;
 		do
  			if [[ $linea  == $usuari ]]; then
   				echo "Usuari valid"
				valid=1
 			fi
	 	done < passwd.txt
		if [[ $valid = 0 ]];then
  			echo "L'usuari introduit no existeix."
 		fi
	;;
	3)
		
	;;
	*)
		read -p "Introdueix una opcio valida: " opcio
	;;
esac

