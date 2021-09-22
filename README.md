# Docker-LAMP-PHP8-MYSQL
Installation d'un environnement de développement pour Symfony avec Docker qui comprend une stack LAMP : Debian 11, PHP8, MYSQL, Apache, Phpmyadmin, Symfony cli, Composer.

Les pré-requis :
- **[Docker](https://docs.docker.com/get-docker/)**
- **[Docker-compose](https://docs.docker.com/compose/install/)**

→ Installe l'environnement de dev :
```
git clone https://github.com/AxelBlanchardon/Docker-LAMP-PHP8-MYSQL.git
```
```
cd Docker-LAMP-PHP8-MYSQL
```
→ Lister vos containers actifs :
```
sudo docker ps 
```
Le nom du container qui contient php et apache a pour nom : "php-apache" comme définit dans le docker-compose.yml  :

→ Lancer le bash de notre conteneur php afin d'intéragir avec la machine Debian :
```
sudo docker exec -ti php-apache bash
```
→ Creer son nouveau projet symfony (https://symfony.com/doc/current/setup.html) exemple :
```
symfony new my_project_name --full
```
```
cd my_project_name
```
→ Lancer le serveur interne de Symfony en arrière plan :
```
symfony serve -d
```
→ On peut donc lancer les commandes de Symfony, composer ou php bin/console et pour sortir du bash tapez : 
```
exit
```
