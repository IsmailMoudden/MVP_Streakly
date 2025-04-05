import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth/sign_in_screen.dart';
import 'screens/main_navigation_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/auth/sign_up_screen.dart';

class StreaklyApp extends StatelessWidget {
  const StreaklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streakly',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: const Color(0xFFFAFAFA), // Light beige
  primaryColor: const Color(0xFFFF8C42), // Soft orange
  colorScheme: ColorScheme.light(
    primary: Color(0xFFFF8C42), // Orange pastel
    secondary: Color(0xFFA0C4FF), // Light pastel blue
    background: Color(0xFFFAFAFA), // General background
    surface: Color(0xFFFFFFFF), // Cards and containers
    onPrimary: Color(0xFFFFFFFF), // Text on buttons
    onBackground: Color(0xFF2D3142), // Main text
    onSurface: Color(0xFF2D3142),
    brightness: Brightness.light,
  ),
  cardColor: Color(0xFFFFFFFF),
  textTheme: const TextTheme(
    bodyText1: TextStyle(color: Color(0xFF2D3142)), // Main text
    bodyText2: TextStyle(color: Color(0xFF7D8597)), // Secondary text
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFFFAFAFA),
    elevation: 0,
    
    iconTheme: IconThemeData(color: Color(0xFF2D3142)),
    titleTextStyle: TextStyle(color: Color(0xFF2D3142), fontSize: 20),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFFFFFFF),
    selectedItemColor: Color(0xFFFF8C42), // Orange
    unselectedItemColor: Color(0xFF7D8597), // Light grey
  ),
  progressIndicatorTheme: const ProgressIndicatorThemeData(
    color: Color(0xFFFFB385), // Light orange
  ),
),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/signin': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/home': (context) => const MainNavigationScreen(initialIndex: 1),
        '/stats': (context) => const MainNavigationScreen(initialIndex: 0),
        '/challenges': (context) => const MainNavigationScreen(initialIndex: 2),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}