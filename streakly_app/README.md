# Streakly App

Streakly is a Flutter application designed to help users track their challenges and statistics in a user-friendly interface. This README provides an overview of the project structure, setup instructions, and usage guidelines.

## Project Structure

The project is organized as follows:

```
streakly_app/
├── lib/
│   ├── main.dart                     # Entry point of the application
│   ├── app.dart                      # Application configuration
│   ├── models/                       # Data models
│   │   └── challenge.dart            # Model for challenges
│   ├── screens/                      # Application screens
│   │   ├── splash_screen.dart        # Splash screen
│   │   ├── auth/
│   │   │   └── sign_in_screen.dart   # Sign-in screen
│   │   ├── main_navigation_screen.dart # Main navigation screen
│   │   ├── home_screen.dart          # Home screen
│   │   ├── stats_screen.dart         # Statistics screen
│   │   ├── challenges_screen.dart    # Challenges screen
│   │   ├── profile_screen.dart       # Profile screen
│   │   └── settings_screen.dart      # Settings screen
│   └── widgets/                      # Reusable widgets
│       ├── challenge_item.dart       # Widget for displaying a challenge
│       ├── stat_card.dart            # Widget for displaying statistics
│       └── charts/
│           └── line_chart_painter.dart # Line chart painter
├── pubspec.yaml                      # Project dependencies and settings
├── analysis_options.yaml             # Dart analysis options
└── README.md                         # Project documentation
```

## Setup Instructions

1. **Clone the repository:**
   ```
   git clone <repository-url>
   cd streakly_app
   ```

2. **Install dependencies:**
   ```
   flutter pub get
   ```

3. **Run the application:**
   ```
   flutter run
   ```

## Usage Guidelines

- The application starts with a splash screen, followed by the main navigation screen.
- Users can sign in through the authentication screen.
- The home screen displays ongoing challenges and allows users to add new challenges.
- The statistics screen provides insights into user performance.
- Users can view available challenges and their profiles through dedicated screens.
- Settings can be modified in the settings screen.

## Contributing

Contributions are welcome! Please feel free to submit a pull request or open an issue for any suggestions or improvements.

## License

This project is licensed under the MIT License. See the LICENSE file for more details.