import 'package:flutter/material.dart';
import 'package:streakly_app/widgets/standard_card.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  void _handleSignIn(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _goToSignUp(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/signup');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using a white background for a clean look.
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Sign In', style: TextStyle(color: Color(0xFF2D3142))),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: StandardCard(
            backgroundColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: const TextStyle(color: Color(0xFF2D3142)),
                    prefixIcon: Icon(Icons.email, color: Colors.orange.shade300),
                  ),
                ),
                const SizedBox(height: 12),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(color: Color(0xFF2D3142)),
                    prefixIcon: Icon(Icons.lock, color: Colors.orange.shade300),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _handleSignIn(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange.shade300,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Sign In'),
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => _goToSignUp(context),
                  child: const Text(
                    "Don't have an account? Sign Up",
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