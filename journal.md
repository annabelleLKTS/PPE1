# Journal de bord du projet encadré
## 06/10/25 il s'agit de ma deuxième tentative du devoir ! 
J'ai cherché en ligne, sur youtube, aucune explication m'a aidé à comprendre ce que je faisais.
J'en ai parlé à mes camarades et elles m'ont aidé ! Notamment Elane, grâce à elle je comprends ce que je fais ! C'est ça qu'il me manque, comprendre ce que je fais, pourquoi je le fais et comment ça influence mon travail ! 
Problème majeur : je ne comprends PAS les consignes ! 

## 24/10/2025 : Comment m'en sortir ?
Il y a plusieurs updates à faire !

udapte : ressentie.
Premièrement: si j'ai eu le courage de revenir écrire dans mon journal, c'est que je me suis familiarisée avec Linux et que j'ai moins peur de tout casser.
Deuxièment : depuis la semaine dernière, je pose énormément de questions en cours car je ne veux plus être frustrée de ne rien comprendre ! Cela m'a permis de comprendre un peu comment fonctionne les modifications sur github, mais je dois pratiquer (je pratique actuellement, c'est pour ça que je suis venue écrire dans mon journal.) 
Troisèmement : j'ai pris du retard dans les exercices à rendre, notamment niveau script bash ! Mais c'est assumé, je n'avais rien compris, et je préfère me familiarisé, me sentir à l'aise puis faire l'exercice.
Quatrièement : Je sais mieux lire les commandes ! Les chemins il faut les lires de gauche à droite. MAIS les "instructions" de droite à gauche ! C'est mon astuce en tout cas !
Fin de update :  ressentie !

update : compétence technique.
1) Je sais écrire un chemin ! J'ai compris le concept d'écrire un chemin ! C'est acquis ! Par exemple : si je veux déplacer un fichier et que je suis dans la bonne branche, je sais que j'ai juste à écrire le chemin à partir d'où je suis. Mais si je suis pas dans la bonne branche je dois l'écrire depuis le début!
ex : supposons que je suis dans pomme et dedans y a un fichier fruit.txt. SI si je veux le mettre dans salsa : je dois écrire le chemin à partir d'où je suis donc : pomme/fruit.txt et le chemin pour trouver salsa : ~/dance/salsa.
~/
|
|---- coursM1/
	|
	------exo/
		----pomme/
|
|----dance/
	|
	-----salsa

et la commande exact pour déplacer est mv (move), donc : mv pomme/fruit.txt ~/dance/salsa.

2) J'essaye de reprendre les commandes qu'on a vu en classe, pour les maitriser et les utiliser dans d'autres contextes ! Et acquérir la syntaxe et logique.
Voici la liste de ce que j'ai travaillé, compris et acquis :
- man nom de la commande : pour trouver des options
- mv cheminfichieradeplacer cheminversoùdeplacer : pour déplacer des éléments sur le terminale
- cat : pour lire un fichier sur le terminale
- cat fichier1 fichier2 : pour lire deux fichiers en même temps sur le terminal
- cp : pour copier un FICHIER
- cp -r : pour copier un DOSSIER
- cp -T fichier1 fichier2 : si je veux remplacer le contenu d'un fichier par un autre !
- mkdir : créer un dossier
- mdkir chemin/doù/jeveux/lecreer/dossieracreer : si je veux créer un dossier à distance
- nano nomfichier : si je veux lire un fichier que j'ai écrit dans nano
- kate nomfichier : si je veux ouvrir un fichier que j'ai écrit sur kate
- nano - Kate : des éditeurs de textes, il suffit d'écrire leur nom dans le terminale et ils s'ouvrent 
- sudo apt install : si je veux installer un logiciel 
- cd : entrer dans un dossier ou revenir dans ~/
- ls : afficher le contenu d'un dossier
- * : signifie tout, ce que j'écris à gauche = "tout qui commence par..." , ce que j'écris à droite = "tout ce qui fini par..."
- lynx etadressdusitequejeveuxvoir.com/fr/org : aller sur internet sur le terminal (il faut la connexion !!!)
- q = quitter
- crtl x : enregistrer

c'est une petite liste mais je suis fière de les COMPRENDRE et savoir les utiliser automatiquement !
Je me suis créer un petit répertoire ! 

3) Je me suis créé un faux dossier avec des faux sous-dossier pour m'entrainer avec ces commandes, car plus on pratique, plus cela devient automatique = donc un  expert !
Je compte créer un deuxième compte github, pour me familiariser avec cette plateforme sans avoir peur de tout casser sur mon github pour les cours !

4) J'ai mis à jour mon journal pour m'entrainer justement avec cette partie que je ne suis pas confiante de faire ! Donc je vais revenir faire un update à ce sujet ! 

## 24/10/2025 : git et github utilisation en autonomie 

### A)  Modifications d'un fichier suivi par git

note) Je suis reveneue faire un update le jour même car je me suis entrainée et ça c'est plutôt bien passé ! à la fin de cet update, j'indiquerai ce que j'aimerai travailler pour la prochaine fois concerçant github.

0) Le point qui était flou pour moi et qui a été élucidé : j'avais peur d'ajouter mon fichier à la suite des commandes, j'avais peur que tout s'efface. Bon ce qui me freine dans ma progression c'est vraiment la peur de tout casser, c'est pourquoi je dois vraiment créer un dossier entrainement!


(tout est en miniscule, je mets en majuscule, juste pour bien me repérer) 

1) étape 1 : GIT STATUS nomdufichier
pourquoi commencer par git status ? Juste pour s'assurer que les modifications ont bien étaient faites ! [J'aimerai tout de même essayer de voir si on peut le faire sans cette étape]
				    Mais aussi pour savoir on se trouve dans quelle branche car on peut en avoir besoin pour la partie push ! [Je dois mieux comprendre cette histoire de branche car c'est encore un peu flou pour moi]

2) étape 2 : GIT ADD nomdufichier
pourquoi on git add : c'est tout simplement pour ajouter toutes les modifications qu'on vient de faire dans le "véhicule" qui est chargé de les transporter jusqu'à github.

3) étape 3 : GIT COMMIT -m "expliquepourquoituasfaitcettemodif" (sans nom du fichier)
pourquoi on git commit : on scelle le vehicule qui contient les modifications pour que rien ne s'échappe. Et juste pour des questions pratique on dit pourquoi on a entrepris cela.

4] étape 4 : GIT PUSH 
pourquoi on git push : l'étape la plus facile, on envoie le véhicule scellé, répértorié et chargé de nos modifications sur github ! 

### B) Comment voir les anciennes versions/commits :

a) sur le terminal : git log
b) sur github : dossier > cliquer sur nom du fichier > history


## A faire pour la prochaine fois ?
- Comprendre le tag [validé !]
- explorer d'autres commandes de git pour être à l'aise avec le mini projet et le projet !
- tester sans git status
- comprendre la notion de branche ! 


### C) Le tag
Donc j'ai travaillé mon tag, notamment :

	C.1) Comment donner un tag a un ancien commit ?

tout en minisucle ! 

1) étape 1 : aller à l'emplacement où se trouve le fichier

2) étape 2 : git tag  nomquejedonneautag numérocommit (<--- on le trouve sur github dans history ! ou git log)

3) étaoe 3 : git tag (<--- pour vérifier que le tag est bien crée)

4) étape 4 : git push origin nomdutag (<---- pourquoi origin ? C'est le nom du dépot distant, autrement dit de "github" ici traduction en fr : envoie le tag sur github)


	C.2) Comment donner un tag a un commit ENCOURS ? (je viens tout juste de le commit)

1) étape 1 : après git commit -m "nomquejeveux" 

2) étape 2 : git tag nomdutagquejeveuxdonner [la salle différence]

3) étape 3 : git tag (<--- voir si il est bien crée)

4) étape 4 : git push origin nomdutag 

or

5) étape 5 : git push origin --tags (<--- pour envoyer tous les nouveaux tag)

dernier update :
- j'ai un rencontré un problème, tag s'est bien envoyé mais pas mon commit ! dois je mettre un push après le commit ? à résoudre !

## 27/10/2025 : Affronter ses peurs ! BASH & SCRIPT

note) Aujourd'hui nous devons rendre notre mini-projet ! Par le passé, j'avais tenté de faire un script mais ça n'avait pas fonctionné ! Je suis venue en cours totalement abbatue, c'est d'ailleurs à partir de cette expérience que j'ai commencé à poser beaucoup plus de questions et que j'ai mis en place 
ma stratégie d'apprentissage ! Donc voic ce que j'ai acquis aujourd'hui :

1) J'ai repris les diapo et j'ai fait des recherches, j'ai maintenant compris le principe et fonctionnement des pipes | . Je saurais le réexpliquer à un débutant. 

2) J'ai reussi à ajouter un dossier que j'ai crée sur mon dépot local sur github ! Je n'y arrivais pas avant ! C'est assez simple, je dois être dans mon dossier qui est lié à github et NON dans le dossier que j'aimerai ajouter, sinon ça me créer un nouveau dépot ! 
C'est ici que je me trompais ! Ensuite, git status, git add, git commit -m, git push ! 

3) J'ai enfin réussi à faire en AUTONOMIE l'exercice avec comptes.sh, ça ne fonctionnait pas la semaine où je devais le déposer ! Je suis vraiment fière de moi !  J'ai reussi à écrire un script (les pipes) !
J'ai aussi compris comment l'afficher sur le terminale (bash nomdufichier). 

4] bonus : je sais faire un + avec mon clavier maintenant ! Merci à chmod +x qui sert à informer que le fichier est bien exécutable ! J'ai également reussi à faire un tag si facilement !

note personnelle) Je suis tellement plus à l'aise avec Linux et github, moins peur de me tromper ! Je suis heureuse, pendant ces vacances je dois rattraper mon retard ! Rappellons que je n'avais pas d'ordinateur pendant les 2 premières semaines du master ! Donc je suis vraiment fière de moi !
		  J'AIME énorément mettre à jour mon journal de bord ! Keep going ! 

5) BASH NOM.sh (tout en minisucle) : 
	a) J'ai crée un tag spécialement pour le point qui me montre comment utiliser un script pour mon nouveau script !!! 
	b) étape du script simplifié :
		b1- dans éditeur de text écrire mon script > enregistrer > SORTIR de l'editeur de text
		b2- dans le terminal rendre exécutable le fichier : chmod nomdufichier
		b3- dans le terminal écrire : bash nomdufichier aquoi_correspond_$1 aquoi_correspond_$2 
		/!\- PAS BESOIN de réécrire le script et de remplacer les dollars ! Juste écrire à quoi correspond les dollars ! 

## 12/11/2025 : comment devenir efficace au delà d'être capable de le faire ?


update : miniprojet-1 

° TOUT CE QUE J'AI APPRIS 

- expr : fonction qui permet d'effectuer des calcules simples
- expr ... + chiffre : nous dit d'augmenter de x chiffre 
- curl : pour récupérer des métadonnées sur une page web
- curl pageweb : récupérer métadonnées sur une page spécifique 
- nolist : pour retirer la liste de lien qui ne fait pas parties de la page web. 
- lynx : pour accéder à une page internet
- lineno : pour afficher le numéro de ligne
- t\ : pour annoter les tabulations
- done < $... : demande le chemin du fichier qu'on va lire
- while -r line : va lire ligne par ligne et stocker cela 
- /n : retour à la ligne
- /r : retour chariot (revenir en début de ligne)
- head -chiffre : fermer d'affichier certaines lignes d'un fichier ! Si je mets -1 = PREMIERE LIGNE ! Si je mets -10 : dix premières lignes 

A) ZOOM sur CURL
	a1) curl -I -w "%{http_code}"    ==> récupérer code http
	a2) curl -I -w "%{content_type]" ==> récupérer encodage

ce que je n'avais pas réussi à faire : 
1- affichier mes données dans le format tableau.tsv.
Comment j'ai réglé le soucis : > tableau.tsv . Grace a la redirection !
Le problème était : que je n'arrivais pas à lier les deux documents. 
2- créer une variable pour le fichier urls.
Le problème était : ma mauvaise lecture de ce que j'écris et ma mauvaise utilisation des variables m'a énormément ralenti.
3- LES COQUILLES ! Parfois je crois que j'ai mal fait quelque chose mais 50% du temps c'est une faute de frappe qui bloque tout. 
4- Lorsque ce n'est pas identique aux professeurs je crois que j'ai tout faut, tandis que c'est juste une erreur de lecture de ma part ! 

update : miniprojet-2

### HTML 

- tag -d nomdutag : retirer un tag existant 
- refermer le html après done
- echo -e "  " : c'est ce qu'il faut utiliser pour que ça apparaisse dans notre fichier HTML.
		Pour chaque nouvel élément utiliser echo -e " " . Ça peut être après une boucle, ect...
Voici un exemple :

echo -e "
<html>
<body>
<table>
	<tr>
	<th>$lineno</th>
	<th>URL</th>
	<th>code http</th>
	<th>encodage</th>
	<th>nombre de mots</th>
	</tr>

<tr>
	<td>$lineno</td>
	<td>$line</td>
	<td>$http_code</td>
	<td>$encoding</td>
	<td>$nb_mots</td>
</tr>

</html>
</body>
</table>"

ce que je n'avais pas réussi à faire : 
1- faire apparaitre tout ce que je veux faire apparaitre
Comment j'ai réglé le soucis : > tableau.tsv . Grace a la redirection !
Raison n°1 : Je pense que le problème est lié au fait que je redirige dans le script directement au lieu de le faire dans le terminale ! 
Mais je ne suis pas sûre car pour certaines choses cela a fonctionné, donc je dois tester. 
Raison n°2 : Encore une fois c'est lié au fait que je ne sais pas exactement ce que je fais ! 

VOICI LE PROBLEME DANS MON SCRIPT 

<head>
<title> Répertoire des liens PPE1 </title> >> ../tableau.html
</head>

commentaire : J'avais mis la redirection car je pensais que ça pourrait m'aider à affichier sur ma page web. Mais la raison pour laquelle il apparait pas, c'est parce-que <head> sert à contenir des métadonnées ! 
si je voulais que le titre apparaisse j'aurai dû écrire <title> dans body ! 

2- J'ai oublié le code_http : mais il est dans mon premier commit, trouvable avec : 3b47ae2 ou miniprojet03hdumatin 
code_http=$(curl -o /dev/null -s -w "%{http_code}" -L "$line")

3- Je n'ai pas pu commit avec mon ancien commit car j'avais pas mis toutes les modifications dans ce commit, donc j'ai du corriger pour que tout apparaisse ! MAIS je ne l'ai pas supprimé ! 
Donc les tag miniprojet-1 et miniprojet1-revu ont des commits différents.


[fin de update]


B) J'ai demandé à notre professeur comment etre efficace et ne plus perdre de temps.
Voic les conseils :

- penser en terme de structure
- quel est la sémantique 
- comment on va formuler cela
- commencer à la main (pour avoir une idée de ce que je veux obtenir avec 2 lignes d'exemples)
- repérer ce qui va être automisable => ce qui va se repeter

## à faire pour la prochaine fois
- refaire miniprojet-1
- refaire miniprojet-2
- pratiquer les astuces que l'enseignant m'a donné pour développer ma logique et ne plus prendre du temps car chaque projet m'a pris plus de 7 heures .... C'est bien trop. 
