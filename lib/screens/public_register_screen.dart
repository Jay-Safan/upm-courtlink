import 'package:flutter/material.dart';

class PublicRegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Public User Account')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text('Account Creation (Public User)', style: TextStyle(fontSize: 18)),
            SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(labelText: 'Full Name'),
            ),
            SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 32),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text('Submit & Return'),
            ),
          ],
        ),
      ),
    );
  }
}
