import 'package:flutter/material.dart';

class LoginSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.emoji_events, // Trophy symbol (represents all sports)
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(height: 16),
              Text(
                'UPM CourtLink',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade800,
                ),
              ),
              Text(
                'Smart Sports Booking System',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red.shade600,
                ),
              ),
              SizedBox(height: 48),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton.icon(
                      onPressed: () => Navigator.pushNamed(context, '/upm_login'),
                      icon: Icon(Icons.school),
                      label: Text('Login with UPM ID'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        minimumSize: Size(0, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () => Navigator.pushNamed(context, '/public_login'),
                      icon: Icon(Icons.mail_outline),
                      label: Text('Login with Email'),
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        side: BorderSide(color: Colors.red),
                        minimumSize: Size(0, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/admin_login'),
                icon: Icon(Icons.admin_panel_settings),
                label: Text('Login as Admin'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade800,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
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
