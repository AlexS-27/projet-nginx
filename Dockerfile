# Étape 1 : base ultra légère
FROM nginx:alpine

# Étape 2 : suppression des fichiers par défaut
RUN rm -rf /usr/share/nginx/html/*

RUN apk add --no-cache curl

# Étape 3 : copie des fichiers statiques
COPY html /usr/share/nginx/html

# Étape 4 : copie d’un fichier de configuration perso (optionnel)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Étape 5 : expose le port
EXPOSE 80

# Étape 6 : lance nginx en mode non daemon
CMD ["nginx", "-g", "daemon off;"]
