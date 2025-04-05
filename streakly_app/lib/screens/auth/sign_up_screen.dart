import 'package:flutter/material.dart';
import 'package:streakly_app/widgets/standard_card.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  void _handleSignUp(BuildContext context) {
    
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _goToSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Sign Up', style: TextStyle(color: Color(0xFF2D3142))),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: StandardCard(
            backgroundColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Name input field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    labelStyle: const TextStyle(color: Color(0xFF2D3142)),
                    prefixIcon: Icon(Icons.person, color: Colors.orange.shade300),
                  ),
                ),
                const SizedBox(height: 12),
                // Email input field
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Color(0xFF2D3142)),
                    prefixIcon: Icon(Icons.email, color: Colors.orange.shade300),
                  ),
                ),
                const SizedBox(height: 12),
                // Password input field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Color(0xFF2D3142)),
                    prefixIcon: Icon(Icons.lock, color: Colors.orange.shade300),
                  ),
                ),
                const SizedBox(height: 12),
                // Confirm Password input field
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    labelStyle: const TextStyle(color: Color(0xFF2D3142)),
                    prefixIcon: Icon(Icons.lock, color: Colors.orange.shade300),
                  ),
                ),
                const SizedBox(height: 20),
                // Sign Up button
                ElevatedButton(
                  onPressed: () => _handleSignUp(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade300,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Sign Up'),
                ),
                const SizedBox(height: 12),
                // Navigation to Sign In if the user already has an account.
                TextButton(
                  onPressed: () => _goToSignIn(context),
                  child: const Text(
                    'Already have an account? Sign In',
                    style: TextStyle(color: Color(0xFF2D3142)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}