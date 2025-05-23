import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Wallet'),
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
              Icon(Icons.account_balance_wallet, size: 80, color: Colors.red.shade700),
              SizedBox(height: 16),
              Text('My Wallet', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red.shade800)),
              SizedBox(height: 8),
              Text('Check your balance and top up for bookings.', style: TextStyle(fontSize: 16, color: Colors.red.shade600)),
              SizedBox(height: 32),
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
                  children: [
                    Text('Current Balance', style: TextStyle(fontSize: 16, color: Colors.red.shade800)),
                    SizedBox(height: 8),
                    Text('RM 50.00', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.red.shade700)),
                    SizedBox(height: 24),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.add_circle_outline),
                      label: Text('Top Up'),
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
