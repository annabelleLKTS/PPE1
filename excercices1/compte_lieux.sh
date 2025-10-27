#!/usr/bin/bash

ANNEE=$1
MOIS=$2
LIEUX=$3

cat ../excercices1/ann/${ANNEE}/${ANNEE}_${MOIS}*.ann | grep Location |cut -f3 | sort | uniq -c | sort -n -r | head -n  $LIEUX

#{ } permet de prendre tout un ensemble ! Attention les $ sont à l'extérieur ! 
# attention à l'arboréscence ! Je me trompe toujours...  
