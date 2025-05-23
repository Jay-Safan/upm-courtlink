import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('UPM CourtLink'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.emoji_events,
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
              SizedBox(height: 32),
              Text(
                'Welcome! What would you like to do?',
                style: TextStyle(fontSize: 18, color: Colors.red.shade800),
              ),
              SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/select_sport'),
                icon: Icon(Icons.emoji_events),
                label: Text('Book Court'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/wallet'),
                icon: Icon(Icons.account_balance_wallet),
                label: Text('Wallet'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade100,
                  foregroundColor: Colors.red.shade800,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () => Navigator.pushNamed(context, '/history'),
                icon: Icon(Icons.history),
                label: Text('Booking History'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade100,
                  foregroundColor: Colors.red.shade800,
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
