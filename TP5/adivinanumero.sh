clear

num_aleatorio=$(($RANDOM % 100 +1))

echo "Hola, juguemos a adivinar el numero del 1 al 100, tenes 5 intentos.."

for i in {1..8}
do
echo "En que numero estoy pensando??"
read num_usuario

	if [ $num_aleatorio -gt $num_usuario ]; then
			echo "El numero que elegiste es menor al numero que estoy pensando."
			  if [ $(($num_aleatorio - $num_usuario)) -le 5 ]; then
        		   echo "Pero estas a 5 numeros de diferencia."
			  fi
'\n'

		elif [ $num_aleatorio -lt $num_usuario ]; then
			echo "El numero que elegiste es mayor al numero que estoy pensando."
			  if [ $(($num_usuario - $num_aleatorio)) -le 5 ]; then
			   echo "Pero estas a 5 numeros de diferencia."
			  fi

			else
			echo "El numero que elegiste es el mismo que estoy pensando, ganaste!!"
			break
	fi

	if [ $i -eq 8 ]; then
	echo "Utilizaste tus 5 intentos, perdiste. El numero que estaba pensando era: $num_aleatorio."
	fi
done
