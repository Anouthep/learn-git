import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF002366), // dark blue background color
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'QUICK TABLE',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.pinkAccent,
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 40),
              Text(
                'Create an account',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add sign up logic here
                },
                child: Text('Sign up with email'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'or continue with',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Add Google sign-in logic here
                },
                icon: Image.asset("assets/images/logo_g.png", height: 24), // Ensure you have a google_logo.png asset
                label: Text('Google'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'By clicking continue, you agree to our Terms of Service and Privacy Policy',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
     ),
);
}
}