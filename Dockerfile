# 1. Utilisation de l'image Payara Full
FROM payara/server-full:6.2023.8-jdk17

# 2. Configuration de l'utilisateur admin via variables d'environnement
# L'image Payara officielle utilise ces variables pour configurer l'admin au démarrage
ENV ADMIN_USER=admin
ENV ADMIN_PASSWORD=Admin#77

# 3. Copie du projet dans le dossier de déploiement
COPY target/tp4-cdi.war ${DEPLOY_DIR}

# 4. Exposition des ports (App et Admin)
EXPOSE 8080 4848

# 5. On ne touche pas au ENTRYPOINT/CMD par défaut !
# L'image sait déjà comment démarrer le domaine avec l'admin actif.