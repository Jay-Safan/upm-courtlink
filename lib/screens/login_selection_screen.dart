import 'package:flutter/material.dart';

class LoginSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.sports_tennis, size: 80, color: Colors.green.shade700),
              SizedBox(height: 16),
              Text(
                'UPM CourtLink',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.green.shade800,
                ),
              ),
              SizedBox(height: 48),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/upm_login'),
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                  backgroundColor: Colors.green,
                ),
                child: Text('Login as UPM User'),
              ),
              SizedBox(height: 16),
              OutlinedButton(
                onPressed: () => Navigator.pushNamed(context, '/guest_login'),
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(double.infinity, 48),
                  side: BorderSide(color: Colors.green),
                ),
                child: Text(
                  'Continue as Guest',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
