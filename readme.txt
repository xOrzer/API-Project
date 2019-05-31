PROJET API REST

Noms : Thomas Boitel, Antoine Steichen et Benoît Ledet
Thème : API pour la gestion de deck Magic
Langues utilisées : nodeJs, PHP, Mysql, Json, Curl (pas de framework)
Pourquoi ? : Nous avons opté pour ces langage car nous les avons déjà utilisés auparavant.

Explication : Cette API permet de faire des appels GET POST PUT DELETE en HTTP avec un retour json et un accès à la base de données. On peut donc afficher les cartes du deck, en ajouter des nouvelles, les mettre à jour ou les supprimer.
Une interface web a été créée pour utiliser cette API.
http://localhost/index.php

Exemples d'appel :
http://localhost:3000/magic
http://localhost:3000/magic/{id}

Github : https://github.com/xOrzer/API-Project

--------------------------------------------------------------------------------------------

INSTALLATION

sudo npm install express-generator -g
express --view=hbs api
cd api
npm install
npm install mysql

- Configurer la base de données dans le fichier db.js (utilisateur, mot de passe et nom de la bdd)
- Importer la base de données avec le fichier magic.sql
- Lancer le serveur : npm start

L'API est consommée dans le répertoire client, les fichiers index.php et magic.png sont à mettre sur un serveur web.





