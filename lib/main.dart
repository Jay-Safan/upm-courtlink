import 'package:flutter/material.dart';

import 'screens/login_selection_screen.dart';
import 'screens/upm_login_screen.dart';
import 'screens/guest_login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/booking_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/history_screen.dart';
import 'screens/admin_panel.dart';

void main() {
  runApp(UPMCourtLinkApp());
}

class UPMCourtLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPM CourtLink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      initialRoute: '/',
      routes: {
        '/':             (ctx) => LoginSelectionScreen(),
        '/upm_login':    (ctx) => UPMLoginScreen(),
        '/guest_login':  (ctx) => GuestLoginScreen(),
        '/home':         (ctx) => HomeScreen(),
        '/booking':      (ctx) => BookingScreen(),
        '/wallet':       (ctx) => WalletScreen(),
        '/history':      (ctx) => HistoryScreen(),
        '/admin':        (ctx) => AdminPanel(),
      },
    );
  }
}
