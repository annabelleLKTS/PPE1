#!/bin/bash
for annee in 2016 2017 2018
do
    total=$(grep -c "Location" ann/$annee/*.ann | awk -F: '{sum += $2} END {print sum}')
    echo "Année $annee : $total"
done

