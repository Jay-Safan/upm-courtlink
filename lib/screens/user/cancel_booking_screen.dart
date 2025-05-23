import 'package:flutter/material.dart';

class CancelBookingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cancel Booking'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Cancel booking UI (choose reason, confirm) (UI only)', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
