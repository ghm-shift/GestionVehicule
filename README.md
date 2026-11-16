# GestionVehicule
Programme Java en console qui gère un parc de véhicules.
Auteurs : <vous> et <votre binôme>

## Après le clone

Pour activer les vérifications automatiques (tests et messages de commit) :

```bash
git config core.hooksPath .githooks
```
Recherche de vehicule en cours...
Voir aussi : git lg
## Compiler
javac -d out $(find src/main -name "*.java")
## Compiler
javac -d out $(find src/main -name "*.java")
Validation automatique par Jenkins

## Exécution avec Docker

Construire l'image :

```bash
docker build -t gestionvehicule:tp-docker .
```

Exécuter le conteneur :

```bash
docker run --name gv-demo gestionvehicule:tp-docker
```

Consulter les journaux, puis supprimer le conteneur :

```bash
docker logs gv-demo
docker rm gv-demo
```
