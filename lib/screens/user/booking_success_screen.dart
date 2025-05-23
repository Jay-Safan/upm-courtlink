import 'package:flutter/material.dart';

class BookingSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking Success'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Your booking was successful! (UI only)', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
