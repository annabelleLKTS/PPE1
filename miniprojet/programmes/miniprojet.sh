#!/usr/bib/bash

if [ $# -ne 1 ]
then
	echo "Argument non vérifié"
	exit
fi

liens=$1
lineno=1

echo -e "n\tLien\tCharset\tNombre de mots" > ../tableaux/tableau-fr.tsv


while read -r line;
do

# comment créeer le tableau que je n'ai pas réussi à faire la dernière fois.
line=$(echo "$line" | tr -d '\r')

echo "${lineno} $line"

#le bon chemin pour que cela fonctionne !!! : bash miniprojet.sh ../urls/fr.txt

curl -i -L -s -w "%{content_type}\n%{http_code}\n" -o tmp.txt "$line" > metadata.tmp


#ici on demande d'afficher que la première ligne de metadata.tmp


content_type=$(head -1 metadata.tmp)

charset=$(echo $content_type | grep -E -o "charset=.*" | cut -d= -f2)
	[ -z "$charset" ] && charset="Inconnu"

# avec nolist on a retiré la liste des URL
nb_mots=$(cat tmp.txt | lynx -dump -stdin -nolist | wc -w)


echo -e "${lineno}\t${line}\t${charset}\t${nb_mots}" >> ../tableaux/tableau-fr.tsv

lineno=$(expr $lineno + 1)

done < "$liens"


#Q1) IL ne faut pas utiliser CAT car une limite un peu dure peu etre donné  (si il y a trop d'arguements). De plus on ne peut pas utiliser "for" avec cat, tout escape compte comme séparateur de mots. 

#bilan de la correction : ce script est beaucoup plus ergonomique et lisble ! Malgré tout cela m'a pris 1h pour bien le faire car je fais beaucoup d'érreur de frappe, syntaxe et j'ai dû mal à repérer mes erreurs !  
# j'ai du rajouter des élements moi-même pour garder la mise en page demandé tel que le dernier echo.
# faire cette correction m'a permis de mieux maitriser l'utilisation des variables ! Je comprends ce qu'elle permette de faire, notamment ici, pouvoir afficher les informations dans l'ordre qu'on veut, indépendamment du moment où on est allé la récupérer. 
# Parfois j'oublie d'écrire dans mon journal de bord, donc j'écris cela ici ! Mais je le rajouterai dans mon journal de bord.
# Nous n'avons pas vu en classe lors de la correction comment le mettre sous forme de tableau, et je n'ai pas reussi la derniere fois ! Mais cette fois-ci  si j'y suis parvenue ! 
# J'ai passé plus de 40Min  a essayé d'affichier les informations dans le tableau !  Et j'ai enfin réussi ! Le problème était que pour le deuxième écho avec redirection  je ne m"étais pas de chemin après >> , j'écrivais juste tableau-fr.tsv. Pour le premier écho ça n'a pas posé de problème pourtant ! 
# Note : j'ignore pourquoi ça n"apparait plus à côté des liens lorsque j'écris bash  avec le chemin vers fr.txt








