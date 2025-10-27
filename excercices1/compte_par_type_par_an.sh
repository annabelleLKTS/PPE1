#!/usr/bin/bash

TYPE=$1

echo "Nombre d'entité en 2016 :"
bash compte_par_type.sh 2016 $TYPE
echo "Nombre d'entité en 2017 :"
bash compte_par_type.sh 2017 $TYPE
echo "Nombre d'entité en 2018 :"
bash compte_par_type.sh 2018 $TYPE


# avec bash compte_par_type.sh  : je fais appelle au script que j'ai écrit précédement ! Lorsque j'écris l'année cela équivaut à écrire l'argument que j'avais donné dans le script en quesion ! 
