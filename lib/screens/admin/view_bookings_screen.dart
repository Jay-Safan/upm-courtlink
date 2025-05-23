import 'package:flutter/material.dart';

class ViewBookingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View All Bookings'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('All bookings will be listed here (UI only)', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
