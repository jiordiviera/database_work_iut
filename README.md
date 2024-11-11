# Centre de Formation - Projet Base de Données

Ce projet consiste en la création et la gestion d'une base de données pour un centre de formation, comprenant la gestion des étudiants, sessions, spécialités et formations. Le projet inclut des concepts avancés de modélisation de bases de données, telles que la normalisation, la création de tables relationnelles, ainsi que des contraintes pour garantir l'intégrité des données.

## Table des Matières

- [Aperçu du Projet](#aperçu-du-projet)
- [Structure de la Base de Données](#structure-de-la-base-de-données)
- [Requis Préliminaires](#requis-préliminaires)
- [Installation](#installation)
- [Utilisation](#utilisation)
- [Auteur](#auteur)

---

## Aperçu du Projet

Ce projet est réalisé dans le cadre de l'apprentissage des concepts de base de données pour une Licence en Génie Logiciel (GL-C). Il comporte deux principaux exercices :
1. **Exercice 1** - Normalisation des données et construction du Modèle Logique de Données (MLD) à partir du Modèle Conceptuel de Données (MCD).
2. **Exercice 2** - Création de la base de données et des tables, ajout de contraintes spécifiques et gestion de l'intégrité des données.

Les entités principales sont les suivantes :
- `Etudiant`: informations sur les étudiants inscrits.
- `Session`: informations sur les sessions de formation.
- `Specialite`: différentes spécialités proposées par le centre.
- `Formation`: informations sur les formations, liées aux spécialités.

## Structure de la Base de Données

Le projet inclut les tables principales suivantes avec leurs relations :

1. **Etudiant** - Contient des informations sur les étudiants.
2. **Session** - Représente les sessions de formation.
3. **Specialite** - Définit les différentes spécialités proposées.
4. **Formation** - Détails des formations offertes, associées aux spécialités.

Les relations entre les entités sont établies en suivant les règles de normalisation, avec des clés primaires et étrangères définies pour maintenir la cohérence et l'intégrité des données.

## Requis Préliminaires

- **SGBD** : MySQL (ou tout autre SGBD compatible avec SQL)
- **Client SQL** : MySQL Workbench, phpMyAdmin, ou tout autre outil de gestion de base de données compatible

## Installation

1. **Cloner le dépôt** : Clonez ce projet depuis votre plateforme de gestion de code, si disponible.

2. **Création de la base de données** : Connectez-vous à votre SGBD MySQL et exécutez le script suivant pour créer la base de données et les tables :

 le script present dans le index.sql

3. **Exécution du script SQL** : Copiez le contenu du script fourni dans un client SQL et exécutez-le pour créer les tables, les relations et les contraintes.

## Utilisation

Une fois la base de données installée, vous pouvez effectuer des opérations CRUD (Create, Read, Update, Delete) sur les différentes tables pour manipuler les données :

1. **Insertion de Données** : Utilisez des instructions `INSERT INTO` pour ajouter des étudiants, des sessions, des spécialités, et des formations.
2. **Consultation des Données** : Faites des requêtes `SELECT` pour consulter les informations stockées dans chaque table.
3. **Mises à Jour** : Utilisez `UPDATE` pour modifier les informations d'un étudiant, session, spécialité ou formation.
4. **Suppression de Données** : `DELETE` peut être utilisé pour supprimer des enregistrements spécifiques.

### Exemple de Requête

Voici un exemple de requête pour récupérer tous les étudiants inscrits dans une spécialité donnée :

```sql
SELECT Etudiant.nomEtu, Specialite.nomSpec
FROM Etudiant
JOIN Inscription ON Etudiant.numEtu = Inscription.numEtu
JOIN Specialite ON Inscription.codeSpec = Specialite.codeSpec
WHERE Specialite.nomSpec = 'Informatique';
```

## Auteur

**Nom** : Jiordi viera <br>
**Contact** : jiordikengne@gmail.com
