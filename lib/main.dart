import 'package:flutter/material.dart';

// Screens
import 'screens/auth/login_selection_screen.dart'; 
import 'screens/auth/upm_login_screen.dart';
import 'screens/auth/public_user_login_screen.dart';
import 'screens/auth/public_register_screen.dart';
import 'screens/home_screen.dart';
import 'screens/wallet_screen.dart';
import 'screens/history_screen.dart';
import 'screens/admin_panel.dart';
import 'screens/select_sport_screen.dart';
import 'screens/tennis_booking_form_screen.dart';

void main() {
  runApp(UPMCourtLinkApp());
}

class UPMCourtLinkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UPM CourtLink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.red.shade50,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginSelectionScreen(),               // Entry point
        '/upm_login': (context) => UPMLoginScreen(),            // UPM members
        '/public_login': (context) => PublicUserLoginScreen(),  // Public users
        '/public_register': (context) => PublicRegisterScreen(),// Public user registration
        '/home': (context) => HomeScreen(),                     // After login
        '/select_sport': (context) => SelectSportScreen(),
        '/tennis_booking': (context) => TennisBookingFormScreen(),
        '/wallet': (context) => WalletScreen(),
        '/history': (context) => HistoryScreen(),
        '/admin': (context) => AdminPanel(),
      },
    );
  }
}
