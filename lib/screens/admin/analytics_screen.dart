import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Analytics Dashboard'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Mock analytics and charts here (UI only)', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
