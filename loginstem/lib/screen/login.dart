import 'package:flutter/material.dart';
import 'package:loginstem/screen/SignUp.dart';

class LoginScreenn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF000000), // Black color
              Color(0xFF3533cd), // Blue color
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo and Title
              Column(
                children: [
                  Image.network(
                      'https://via.placeholder.com/150'), // Placeholder for logo
                  SizedBox(height: 16.0),
                  Text(
                    'THYNK UNLIMITED',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Mobile Services!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32.0),
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Sign in to continue.',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 32.0),
              // Email Field
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  labelText: 'EMAIL',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16.0),
              // Password Field
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  labelText: 'PASSWORD',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Add sign up logic here
                },
                child: Text('Login with email'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'or continue with',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  // Add Google sign-in logic here
                },
                icon: Image.asset("assets/images/logo_g.png",
                    height: 24), // Ensure you have a google_logo.png asset
                label: Text('Google'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            
              SizedBox(height: 16.0),
              // Create New Account Button
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(//ການລີງໄປຫນ້າອື່ນ
                      builder: (context) {
                    return Loginscreen();
                  }));
                },
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
