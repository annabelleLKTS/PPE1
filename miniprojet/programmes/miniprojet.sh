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
<meta charset='UTF-8' />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@1.0.4/css/bulma.min.css" />
<title>Répertoire des liens de PPE1</title>
</head>

<body>
<section>
<div class=\"hero has-text-centered\">
<h1 class=\"title has-text-danger\">Tableau liens PPE1</h1>
<br />
<br />
</div>
<nav class=\"tabs is-centered\">
	<ul>
		<li class=\"has-background-danger-light\"><a href="/home/annabelle/coursM1/PPE1/index.html">Présentation du projet</a></li>
		<li class=\"has-background-warning-light\"><a href="/home/annabelle/coursM1/PPE1/miniprojet/tableau.html">Tableau des résultats</a></li>
	</ul>
</nav>
<br />
<br />

<div class=\"columns is-centered\">
<div class=\"block content\">
<p class=\"is-centered\"><u>  Tableau des résultats du mini-projet </u></p>

<br />
<br />

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
</div>
</div>
</section>
</body>
</html>
<br />
<br />
"
