import 'package:flutter/material.dart';

class TennisBookingFormScreen extends StatefulWidget {
  @override
  _TennisBookingFormScreenState createState() => _TennisBookingFormScreenState();
}

class _TennisBookingFormScreenState extends State<TennisBookingFormScreen> {
  DateTime? selectedDate;
  String? selectedTime;
  String? selectedCourt;
  final List<String> timeSlots = [
    '8:00 AM - 9:00 AM',
    '9:00 AM - 10:00 AM',
    '10:00 AM - 11:00 AM',
    '11:00 AM - 12:00 PM',
    '5:00 PM - 6:00 PM',
    '6:00 PM - 7:00 PM',
  ];
  final List<String> courts = [
    'Court 1',
    'Court 2',
    'Court 3',
  ];
  final int price = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Tennis Booking'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.sports_tennis, size: 60, color: Colors.red.shade700),
                SizedBox(height: 16),
                Text('Book Tennis Court', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.red.shade800)),
                SizedBox(height: 24),
                // Date Picker
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Select Date', style: TextStyle(fontSize: 16, color: Colors.red.shade800, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: selectedDate == null ? 'Pick a date' : '${selectedDate!.toLocal()}'.split(' ')[0],
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    suffixIcon: Icon(Icons.calendar_today, color: Colors.red.shade400),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  onTap: () async {
                    DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime.now(),
                      lastDate: DateTime.now().add(Duration(days: 60)),
                    );
                    if (picked != null) setState(() => selectedDate = picked);
                  },
                ),
                SizedBox(height: 16),
                // Time Picker
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Select Time', style: TextStyle(fontSize: 16, color: Colors.red.shade800, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: selectedTime,
                  hint: Text('Pick a time slot'),
                  items: timeSlots.map((slot) => DropdownMenuItem(value: slot, child: Text(slot))).toList(),
                  onChanged: (val) => setState(() => selectedTime = val),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
                SizedBox(height: 16),
                // Court Picker
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Select Court', style: TextStyle(fontSize: 16, color: Colors.red.shade800, fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 8),
                DropdownButtonFormField<String>(
                  value: selectedCourt,
                  hint: Text('Pick a court'),
                  items: courts.map((court) => DropdownMenuItem(value: court, child: Text(court))).toList(),
                  onChanged: (val) => setState(() => selectedCourt = val),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Price:', style: TextStyle(fontSize: 18, color: Colors.red.shade800, fontWeight: FontWeight.bold)),
                    Text('RM $price', style: TextStyle(fontSize: 18, color: Colors.red.shade700, fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 24),
                ElevatedButton.icon(
                  onPressed: (selectedDate != null && selectedTime != null && selectedCourt != null)
                      ? () {
                          // TODO: Handle booking confirmation
                        }
                      : null,
                  icon: Icon(Icons.check_circle_outline),
                  label: Text('Confirm Booking'),
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
        ),
      ),
    );
  }
}
