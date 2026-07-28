Voici un **README complet prêt à coller** dans ton fichier `README.md` à la racine du projet.

```markdown
# 🎬 Movie Explorer - Application Flutter

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Dart](https://img.shields.io/badge/Dart-3.x-blue)
![GoRouter](https://img.shields.io/badge/Navigation-GoRouter-green)

## 📱 Description

**Movie Explorer** est une application mobile développée avec Flutter et Dart permettant aux utilisateurs de consulter une liste de films, rechercher des films, afficher leurs détails et ajouter de nouveaux films via un formulaire validé.

Ce projet a été réalisé dans le cadre d'un exercice de validation des compétences Flutter concernant la navigation multi-écrans, la gestion des widgets, les formulaires et les thèmes.

---

# ✨ Fonctionnalités

## 🏠 Écran d'accueil

- Présentation de l'application
- Interface moderne avec image de fond
- Navigation vers les autres écrans

## 🎬 Liste des films

- Affichage des films sous forme de cartes
- Utilisation de ListView
- Recherche dynamique par titre
- Filtrage des résultats

## 📄 Détails d'un film

- Affichage des informations complètes :
  - Titre
  - Genre
  - Année
  - Description
  - Image
- Passage de paramètres avec GoRouter

## ➕ Ajouter un film

- Formulaire utilisateur
- Validation des champs :
  - Titre
  - Genre
  - Description
- Message de confirmation après validation

## 🌙 Thème

- Support du thème clair
- Support du thème sombre
- Adaptation automatique selon le système

---

# 🛠️ Technologies utilisées

- Flutter
- Dart
- Material Design 3
- GoRouter pour la navigation
- Widgets Flutter réutilisables

---

# 📂 Architecture du projet

```

lib/

├── main.dart

├── data/
│   └── movie_data.dart

├── models/
│   └── movie.dart

├── router/
│   └── app_router.dart

├── screens/
│   ├── home_screen.dart
│   ├── movies_screen.dart
│   ├── movie_details_screen.dart
│   └── add_movie_screen.dart

├── theme/
│   └── app_theme.dart

└── widgets/
├── movie_card.dart
├── search_bar.dart
└── custom_button.dart

````

---

# 🧩 Widgets réutilisables

L'application contient plusieurs widgets personnalisés :

## MovieCard

Widget permettant d'afficher un film dans la liste.

## CustomButton

Bouton personnalisé utilisé pour les actions principales.

## SearchBar

Widget dédié à la recherche des films.

---

# 🧭 Navigation

La navigation est réalisée avec **GoRouter**.

Routes disponibles :

| Route | Écran |
|---|---|
| `/` | Accueil |
| `/movies` | Liste des films |
| `/details/:id` | Détails d'un film |
| `/add` | Ajouter un film |

---

# 📱 Responsive Design

L'application s'adapte aux différentes tailles d'écran grâce à :

- MediaQuery
- Layout responsive
- Widgets Flutter adaptatifs

Elle fonctionne sur :

- Smartphones
- Tablettes

---

# 🚀 Installation

## Prérequis

Installer :

- Flutter SDK
- Dart SDK
- Android Studio ou VS Code

Vérifier l'installation :

```bash
flutter doctor
````

---

## Cloner le projet

```bash
git clone URL_DU_DEPOT
```

Accéder au dossier :

```bash
cd movie_explorer
```

---

## Installer les dépendances

```bash
flutter pub get
```

---

## Lancer l'application

```bash
flutter run
```

---

# 📸 Captures d'écran

Ajouter les captures dans le dossier :

```
screenshots/
```

Exemples :

* Écran d'accueil
* Liste des films
* Recherche
* Détails d'un film
* Formulaire d'ajout

---

# 📦 Dépendances principales

```yaml
dependencies:

  flutter:
    sdk: flutter

  go_router: ^14.8.1
```

---

# 👨‍💻 Auteur

Projet réalisé avec Flutter et Dart.

---

# 📄 Licence

Projet éducatif réalisé dans un cadre académique.

````

