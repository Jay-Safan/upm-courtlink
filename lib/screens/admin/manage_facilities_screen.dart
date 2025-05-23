import 'package:flutter/material.dart';

class ManageFacilitiesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage Facilities'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('Add, remove, or edit courts here (UI only)', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
