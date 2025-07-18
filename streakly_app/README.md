# Streakly MVP

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Flutter](https://img.shields.io/badge/Flutter-3.0+-blue.svg)](https://flutter.dev/)
[![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)](https://dart.dev/)

## Screenshots

| Home Screen | Challenge Screen | Stats Screen |
|:-----------:|:----------------:|:------------:|
| ![Home](assets/images/image.png) | ![Challenge](assets/images/image\ copy.png) | ![Stats](assets/images/image\ copy\ 2.png) |

Ce dépôt contient le code source du MVP de Streakly, une application de suivi de challenges et d'habitudes.

## ⚠️ Statut : MVP (Minimum Viable Product)
Ce projet est une première version fonctionnelle, destinée à valider les concepts et l'expérience utilisateur. Il ne s'agit pas d'une version finale. Plusieurs fonctionnalités et optimisations sont prévues pour les prochaines itérations (voir plus bas).

## Technologies utilisées
- **Flutter** (Dart) : Framework principal pour le développement multiplateforme (iOS, Android, Web, Desktop)
- **Material Design** : Pour l'UI/UX
- **Architecture modulaire** : Séparation claire entre modèles, écrans, widgets, etc.
- **Gestion d'état** : (À préciser selon le code, ex: Provider, Riverpod, etc. — à compléter dans la doc technique)

## Structure du projet
```
streakly_app/
  lib/
    models/         # Modèles de données (ex: Challenge)
    screens/        # Écrans principaux de l'app (auth, home, profil, etc.)
    widgets/        # Widgets réutilisables et composants graphiques
    ...
  assets/           # Images, icônes, ressources statiques
  test/             # Tests unitaires et widgets
  doc/              # Documentation technique détaillée (créée prochainement)
```

## Documentation technique
Un dossier `doc/` sera créé pour fournir une documentation détaillée **fichier par fichier**. Chaque aspect technique (modèles, navigation, widgets, logique métier, etc.) y sera expliqué par des experts.

## Futures évolutions prévues
- Authentification avancée (OAuth, biométrie, etc.)
- Notifications push
- Synchronisation cloud et sauvegarde
- Statistiques avancées et visualisations
- Mode sombre/clair dynamique
- Internationalisation (i18n)
- Tests automatisés plus complets
- Optimisations de performance
- Accessibilité renforcée

## Lancer le projet
```sh
cd streakly_app
flutter pub get
flutter run
```

---

Pour toute question ou contribution, consultez la documentation dans le dossier `doc/` (à venir) ou ouvrez une issue.