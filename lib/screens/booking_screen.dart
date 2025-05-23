import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Book a Court'),
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
                Icons.sports_tennis,
                size: 80,
                color: Colors.red.shade700,
              ),
              SizedBox(height: 16),
              Text(
                'Book a Court',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade800,
                ),
              ),
              Text(
                'Reserve your slot for your favorite sport!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.red.shade600,
                ),
              ),
              SizedBox(height: 32),
              // Booking form for Tennis (future: add more sports)
              Container(
                padding: EdgeInsets.all(24),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Select Sport',
                      style: TextStyle(fontSize: 16, color: Colors.red.shade800, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      value: 'Tennis',
                      items: [
                        DropdownMenuItem(
                          value: 'Tennis',
                          child: Text('Tennis'),
                        ),
                      ],
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Select Date',
                      style: TextStyle(fontSize: 16, color: Colors.red.shade800, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: 'Pick a date',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                        suffixIcon: Icon(Icons.calendar_today, color: Colors.red.shade400),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      onTap: () {
                        // TODO: Show date picker
                      },
                    ),
                    SizedBox(height: 16),
                    Text(
                      'Select Time',
                      style: TextStyle(fontSize: 16, color: Colors.red.shade800, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      readOnly: true,
                      decoration: InputDecoration(
                        hintText: 'Pick a time slot',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                        suffixIcon: Icon(Icons.access_time, color: Colors.red.shade400),
                        contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                      ),
                      onTap: () {
                        // TODO: Show time picker or slot selection
                      },
                    ),
                    SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.check_circle_outline),
                      label: Text('Confirm Booking'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
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
            ],
          ),
        ),
      ),
    );
  }
}
