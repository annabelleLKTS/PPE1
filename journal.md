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
