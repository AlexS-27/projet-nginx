# Utiliser l'image officielle Nginx comme base
FROM nginx:latest

# Copier ton site dans le dossier que Nginx sert par défaut
COPY site/ /usr/share/nginx/html/

# Exposer le port 80
EXPOSE 80