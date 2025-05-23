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
        backgroundColor: Colors.red.shade50,
        appBar: AppBar(
          title: Text('History'),
          backgroundColor: Colors.red,
          foregroundColor: Colors.white,
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Colors.white,
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
              padding: EdgeInsets.all(24),
              itemCount: _bookings.length,
              itemBuilder: (context, i) {
                final booking = _bookings[i];
                return Card(
                  margin: EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: Icon(Icons.sports_tennis, color: Colors.red.shade400),
                    title: Text('${booking['court']}  |  ${booking['date']}', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('${booking['time']}'),
                    trailing: Text(
                      booking['status'] ?? '',
                      style: TextStyle(
                        color: booking['status'] == 'Completed' ? Colors.green : Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              },
            ),
            // --- TRANSACTIONS TAB ---
            ListView.builder(
              padding: EdgeInsets.all(24),
              itemCount: _transactions.length,
              itemBuilder: (context, i) {
                final tx = _transactions[i];
                return Card(
                  margin: EdgeInsets.only(bottom: 16),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: ListTile(
                    leading: Icon(
                      tx['type'] == 'Top-Up' ? Icons.add_circle_outline : Icons.monetization_on,
                      color: tx['type'] == 'Top-Up' ? Colors.green : Colors.orange,
                    ),
                    title: Text('${tx['type']}', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text('${tx['date']}'),
                    trailing: Text(
                      tx['amount'] ?? '',
                      style: TextStyle(
                        color: tx['amount'] != null && tx['amount']!.contains('+') ? Colors.green : Colors.red,
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
