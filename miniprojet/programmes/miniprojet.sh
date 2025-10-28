#!/usr/bib/bash

if [ $# -eq 0 ]; then
	echo "Argument non vérifié"
	exit 1
fi

liens="$1"
numeroter=1

while read -r line;
do
if [[ $line =~ https:// ]]; then
	code_http=$(curl -o /dev/null -s -w "%{http_code}" -L "$line")

	encodage=$(curl -sI "$line" | grep -i "charset=" | cut -d'='  -f2 | tr -d '\r')
	[ -z  "$encodage" ] && encodage="indisponible"

	nb_mots=$(curl -s "$line" | wc -w)


	echo -e "${numeroter}\t${line}\t${code_http}\t${encodage}\t${nb_mots}""mots";
	numeroter=$(expr $numeroter + 1)
fi
done < "$liens"


#le bon chemin pour que cela fonctionne !!! : bash miniprojet.sh ../urls/fr.txt
