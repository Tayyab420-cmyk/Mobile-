import 'package:flutter/material.dart';
import 'question_setup_page.dart'; // Import QuestionSetupPage

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text field for username
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), // Add some space between text fields
            // Text field for password
            TextField(
              obscureText: true, // Hide the entered text for password
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20), // Add some space between text fields and login button
            // Login button
            ElevatedButton(
              onPressed: () {
                // Navigate to QuestionSetupPage after successful login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => QuestionSetupPage()),
                );
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
