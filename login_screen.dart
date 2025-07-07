
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login to Sidegig PH', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: Firebase Auth login logic
              },
              child: const Text('Login'),
            ),
            const SizedBox(height: 12),
            OutlinedButton(
              onPressed: () {
                // TODO: Firebase Google Sign-In
              },
              child: const Text('Continue with Google'),
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () {
                // TODO: Navigate to signup page
              },
              child: const Text('Create account'),
            )
          ],
        ),
      ),
    );
  }
}
