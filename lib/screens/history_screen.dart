import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  // Dummy data – replace with your real models / Firestore streams later
  final List<Map<String, String>> _bookings = [
    {
      'date': '2025-05-20',
      'court': 'Court 1',
      'time': '10:00 – 11:00',
      'status': 'Completed',
    },
    {
      'date': '2025-05-19',
      'court': 'Court 3',
      'time': '14:00 – 15:00',
      'status': 'Cancelled',
    },
  ];

  final List<Map<String, String>> _transactions = [
    {
      'date': '2025-05-18',
      'type': 'Top-Up',
      'amount': '+ RM50',
    },
    {
      'date': '2025-05-17',
      'type': 'Refund',
      'amount': '+ RM15',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('History'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Bookings'),
              Tab(text: 'Transactions'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // --- BOOKINGS TAB ---
            ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: _bookings.length,
              itemBuilder: (context, i) {
                final b = _bookings[i];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text('${b['court']}'),
                    subtitle: Text('${b['date']} • ${b['time']}'),
                    trailing: Text(
                      b['status']!,
                      style: TextStyle(
                        color: b['status'] == 'Completed'
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),

            // --- TRANSACTIONS TAB ---
            ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: _transactions.length,
              itemBuilder: (context, i) {
                final t = _transactions[i];
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 6),
                  child: ListTile(
                    leading: Icon(
                      t['type'] == 'Top-Up'
                          ? Icons.account_balance_wallet
                          : Icons.reply,
                    ),
                    title: Text(t['type']!),
                    subtitle: Text('${t['date']}'),
                    trailing: Text(
                      t['amount']!,
                      style: TextStyle(
                        color: t['amount']!.startsWith('+')
                            ? Colors.green
                            : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
