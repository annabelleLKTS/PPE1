#!/usr/bin/bash

if [ $# -ne 1 ]
then
        echo "Argument non vérifié"
        exit
fi

liens=$1
lineno=1
html_page="tableau.html"

#on déclare le html

echo -e "
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.4/css/bulma.min.css" />
<meta charset='UTF-8' />
<title>Répertoire des liens de PPE1</title>
</head>
<body>
<h2>Tableau liens PPE1</h2>
<table border='1'>
<tr>
	<th> NUMERO </th>
	<th> LIENS </th>
	<th> CODE HTTP </th>
	<th> ENCODAGE </th>
	<th> NOMBRE DE MOTS </th>
</tr>
"

while read -r line;
do

	data=$(curl -i -L -s -w "%{content_type}\n%{http_code}\n" -o tmp.txt "$line")

         content_type=$(echo "$data" | head -n 1)

	http_code=$(echo "$data" | tail -n 1)

	charset=$(echo "$content_type" | grep -E -o "charset=.*" | cut -d= -f2)
        [ -z "$charset" ] && charset="Inconnu"

	nb_mots=$(cat tmp.txt | lynx -dump -stdin -nolist | wc -w)


	echo -e "
	<tr>
		<td>${lineno}</td>
		<td>${line}</td>
		<td>${http_code}</td>
		<td>${charset}</td>
		<td>${nb_mots}</td>
	</tr>
	"

lineno=$((lineno +1))

done < "$liens"

echo -e "
</table>
</body>
</html>
"

echo "fichier html généré : $html_page"
