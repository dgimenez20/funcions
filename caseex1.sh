#/bin/bash

read -p "Introdueix la paraula 'exit': " paraula

sortir=0

while [ $sortir != 1 ]
do
	case $paraula in
		'exit')
			`sudo xdg-open https://www.youtube.com/watch?v=jaLDoWqIq2M`
			sortir=1
		;;
		*)
			read -p "Introdueix la paraula 'exit': " paraula
		;;
	esac
done
