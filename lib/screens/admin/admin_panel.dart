import 'package:flutter/material.dart';
import 'view_bookings_screen.dart';
import 'manage_facilities_screen.dart';
import 'transactions_screen.dart';
import 'analytics_screen.dart';

class AdminPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Admin Panel'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Admin Dashboard', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.red.shade800)),
            SizedBox(height: 24),
            AdminPanelButton(
              icon: Icons.event_note,
              label: 'Booking Overview',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ViewBookingsScreen()),
              ),
            ),
            SizedBox(height: 16),
            AdminPanelButton(
              icon: Icons.sports_tennis,
              label: 'Facility Management',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => ManageFacilitiesScreen()),
              ),
            ),
            SizedBox(height: 16),
            AdminPanelButton(
              icon: Icons.account_balance_wallet,
              label: 'User Transactions',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TransactionsScreen()),
              ),
            ),
            SizedBox(height: 16),
            AdminPanelButton(
              icon: Icons.analytics,
              label: 'Analytics (Coming Soon)',
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => AnalyticsScreen()),
              ),
              disabled: false,
            ),
          ],
        ),
      ),
    );
  }
}

class AdminPanelButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;
  final bool disabled;

  const AdminPanelButton({
    required this.icon,
    required this.label,
    this.onTap,
    this.disabled = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        decoration: BoxDecoration(
          color: disabled ? Colors.red.shade100 : Colors.white,
          borderRadius: BorderRadius.circular(14),
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
            Icon(icon, size: 32, color: Colors.red.shade700),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.red.shade800,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            if (disabled)
              Icon(Icons.lock, color: Colors.red.shade200)
            else
              Icon(Icons.arrow_forward_ios, color: Colors.red.shade400),
          ],
        ),
      ),
    );
  }
}
