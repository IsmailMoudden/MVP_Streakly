# Streakly Project Architecture (MVP)

## Technical choices
- **Flutter**: Enables cross-platform development (iOS, Android, Web, Desktop) with a single codebase.
- **Dart**: Modern language, optimized for Flutter.
- **Material Design**: Consistent UI/UX across all platforms.

## Modular structure
- `lib/models/`: Data models (e.g., Challenge)
- `lib/screens/`: Main screens (auth, home, profile, etc.)
- `lib/widgets/`: Reusable widgets (cards, charts, etc.)
- `assets/`: Static resources (images, icons)
- `test/`: Unit and widget tests

## Separation of concerns
- **Models**: Encapsulate business logic and data structure.
- **Screens**: Handle display and navigation.
- **Widgets**: Reusable UI components.

## Navigation
- Navigation based on Flutter routes.
- Use of navigation widgets (e.g., BottomNavigationBar).

## State management
- (To be completed according to the code: Provider, Riverpod, etc.)

## Best practices
- Well-commented and structured code.
- Clear separation between business logic and presentation.
- Prepared for scalability (easy addition of new features). 