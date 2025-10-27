#!/usr/bin/bash

ANNEE=$1
TYPE=$2

cat ../excercices1/ann/$ANNEE/*.ann | grep $TYPE | wc -l


#J'ai mis  ../excercices1 car mon fichier se trouve au même niveau que ce dossier donc nous devons réculer d'un pas !
