import 'package:flutter/material.dart';
import '../admin/admin_panel.dart';

class AdminLoginScreen extends StatefulWidget {
  @override
  _AdminLoginScreenState createState() => _AdminLoginScreenState();
}

class _AdminLoginScreenState extends State<AdminLoginScreen> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _loading = false;
  String? _error;

  void _login() async {
    // Simulate login for UI demo: always go to admin panel
    Navigator.pushReplacementNamed(context, '/admin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Admin Login', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.admin_panel_settings, size: 60, color: Colors.red.shade700),
              SizedBox(height: 16),
              Text(
                'UPM Admin Login',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade800,
                ),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _emailCtrl,
                decoration: InputDecoration(
                  labelText: 'Admin Email',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passCtrl,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              if (_error != null) ...[
                SizedBox(height: 16),
                Text(_error!, style: TextStyle(color: Colors.red)),
              ],
              SizedBox(height: 32),
              _loading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _login,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        minimumSize: Size(double.infinity, 48),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text('Login as Admin'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
