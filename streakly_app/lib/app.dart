import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/auth/sign_in_screen.dart';
import 'screens/main_navigation_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/settings_screen.dart';
import 'screens/home_screen.dart';
import 'screens/stats_screen.dart';
import 'screens/challenges_screen.dart';



class StreaklyApp extends StatelessWidget {
  const StreaklyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Streakly Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
        ),
      ),
      home: const SplashScreen(),
      routes: {
        '/signin': (context) => const SignInScreen(),
        '/home': (context) => const MainNavigationScreen(initialIndex: 1),
        '/stats': (context) => const MainNavigationScreen(initialIndex: 0),
        '/challenges': (context) => const MainNavigationScreen(initialIndex: 2),
        '/profile': (context) => const ProfileScreen(),
        '/settings': (context) => const SettingsScreen(),
      },
    );
  }
}