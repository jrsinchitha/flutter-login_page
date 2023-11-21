// login_page.dart
import 'package:flutter/material.dart';
import 'login_form.dart';
import 'sign_up_form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0),
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginForm()),
                      );
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // Set button background color
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpForm()),
                      );
                    },
                    child: Text('Sign Up'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange, // Set button background color
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
