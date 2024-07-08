import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:const BoxDecoration(
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
                  Image.network('https://via.placeholder.com/150'), // Placeholder for logo
                  SizedBox(height: 16.0),
                  Text(
                    'QUICK TABLE',
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
                'Create New Account',
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
               TextField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.1),
                  labelText: 'TEL',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 32.0),
              // Login Button
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange, // Button color
                  padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              // Create New Account Button
              
            ],
          ),
        ),
     ),
   );
    
  }
}
