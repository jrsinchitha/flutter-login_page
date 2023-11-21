// login_form.dart
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.popUntil(context, ModalRoute.withName('/'));
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.teal, // Set the background color to teal
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              constraints: BoxConstraints(maxWidth: 300.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  TextFormField(
                    controller: usernameController,
                    style: TextStyle(color: Colors.white), // Set text color
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.white), // Set label color
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey[800], // Set field background color
                    ),
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: passwordController,
                    style: TextStyle(color: Colors.white), // Set text color
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white), // Set label color
                      border: OutlineInputBorder(),
                      filled: true,
                      fillColor: Colors.grey[800], // Set field background color
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      String username = usernameController.text;
                      String password = passwordController.text;

                      print('Username: $username, Password: $password');

                      Navigator.popUntil(context, ModalRoute.withName('/'));
                    },
                    child: Text('Login'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
