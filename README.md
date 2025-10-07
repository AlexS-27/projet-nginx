# projet-nginx
Site web statique avec Nginx 
- Conteneuriser un petit site HTML/CSS.
- Exposer le port 80.
- Ajouter un volume pour modifier le contenu en direct.

## Marche à suivre 
1. Téléchager JetBrains WebStorm latest (version utilisée 2025.2.3)
2. Cloner le repository à l'aide du lien
3. Se rendre dans le fichier docker-compose-yml
4. Run le programme
5. Aller dans un navigateur et se rendre sur http://Localhost:8080
6. Le service devrait être actif

Points d'attentions :
Vérifier qu'aucun autre service ne soit actif sur le port 8080
Possibilité de vérifier les conteneurs actifs via '''docker ps'''

## Sécurité & gestion des ressources
Afin d'optimiser la gestion des ressources et de mettre à disposition une solution sécurisée il a été mis en oeuvre : 
1. Utilisation d'une image légère : nginx:alpine (7 mo)
2. Utilisation d'une image officielle nginx

# Marche à suivre sans cloner le repository Git
1. Téléchager JetBrains WebStorm latest (version utilisée 2025.2.3)
2. Créer un projet
3. Créer un dossier "site"
4. Insérer ses fichiers web (HTML; CSS; JS) afin d'obtenir le rendu du site voulu  
5. Dans le terminal entrer '''docker run -d -p 8080:80  -v ${PWD}/site:/usr/share/nginx/html --name <nom du container> nginx:alpine'''
6. Aller dans le navigateur et se rendre sur http://Localhost:8080
