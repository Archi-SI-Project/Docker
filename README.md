# Docker
docker compose et docker file pour le projet d'archi

pour le faire fonctionner :

1 - Architecture des fichiers : 
utiliser le script copyFile.ps1 (il peut être nécéssaire d'autoriser l'execution de script) : 
pour cela les repertoire des autres repo doivent être dans un dossier commun (un dossier Projet avec : Service1, Service2, front, Docker)
sinon c'est : 
    a. tout le repo front dans le dossier front
    b. le jar de chaque service nommé Service*.jar dans les dossiers correspondant

2 - lancement du docker :
en ligne de commande : docker compose up dans le dossier racine