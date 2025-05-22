import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Welcome to UPM CourtLink')),
          ElevatedButton(
            child: Text('Book Court'),
            onPressed: () => Navigator.pushNamed(context, '/booking'),
          ),
          ElevatedButton(
            child: Text('Wallet'),
            onPressed: () => Navigator.pushNamed(context, '/wallet'),
          ),
          ElevatedButton(
            child: Text('Admin'),
            onPressed: () => Navigator.pushNamed(context, '/admin'),
          ),
        ],
      ),
    );
  }
}
