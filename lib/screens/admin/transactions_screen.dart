import 'package:flutter/material.dart';

class TransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Transactions'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('All user transactions will be listed here (UI only)', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
