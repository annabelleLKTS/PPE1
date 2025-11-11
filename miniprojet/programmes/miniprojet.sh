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

echo "<!DOCTYPE html>"
echo "<html>"
echo "<head>"
echo "	<meta charset='UTF-8' />"
echo "	<title>Répertoire des liens de PPE1</title>"
echo "</head>"
echo "<body>"
echo "<h2>Tableau liens PPE1</h2>"
echo "<table border='1'>" >  ../tableau.html
echo 	"<tr>"
echo		"<th>NUMERO</th>" >> ../tableau.html
echo            "<th>LIENS</th>" >> ../tableau.html
echo            "<th>ENCODAGE</th>" >> ../tableau.html
echo            "<th>NOMBRE DE MOTS</th>" >> ../tableau.html
echo	"</tr>"


while read -r line;
do

curl -i -L -s -w "%{content_type}\n%{http_code}\n" -o tmp.txt "$line" > metadata.tmp

content_type=$(head -1 metadata.tmp)

charset=$(echo $content_type | grep -E -o "charset=.*" | cut -d= -f2)
        [ -z "$charset" ] && charset="Inconnu"

nb_mots=$(cat tmp.txt | lynx -dump -stdin -nolist | wc -w)


echo    "<tr>"
echo            "<td>${lineno}</td>"
echo            "<td>${line}</td>"
echo            "<td>${charset}</td>" 
echo            "<td>${nb_mots}</td>"
echo    "</tr>"

lineno=$((lineno +1))

done < "$liens" >> ../tableau.html 

echo "</table>"
echo "</body>"
echo "</html>" >>  "$html_page"

echo "fichier html généré : $html_page"
