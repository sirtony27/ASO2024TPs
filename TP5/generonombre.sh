clear

get_gender() {
    local nombre="$1"
    local url="https://api.genderize.io/?name=${nombre}"

    local response=$(curl -s "$url")

    local gender=$(echo "$response" | grep -o '"gender":"[^"]*' | sed 's/"gender":"//' | sed 's/".*//')

    case $gender in
        male)
            gender="masculino"
            ;;
        female)
            gender="femenino"
            ;;
        *)
            gender="desconocido"
            ;;
    esac

    echo "El nombre '$nombre' es de genero: $gender"
}

echo "Ingrese un nombre para conocer su genero: "
read nombre

get_gender "$nombre"
