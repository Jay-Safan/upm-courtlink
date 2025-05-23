import 'package:flutter/material.dart';

class SelectSportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Select Sport'),
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
              Text(
                'Choose a Sport',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade800,
                ),
              ),
              SizedBox(height: 32),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, '/tennis_booking'),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.red.shade100,
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'lib/assets/tennis.jpg',
                          width: 60,
                          height: 60,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Text(
                          'Tennis',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.red.shade800,
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.red.shade400),
                    ],
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
