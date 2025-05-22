import 'package:flutter/material.dart';

class UPMLoginScreen extends StatefulWidget {
  @override
  _UPMLoginScreenState createState() => _UPMLoginScreenState();
}

class _UPMLoginScreenState extends State<UPMLoginScreen> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _loading = false;

  void _login() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 1)); // Simulate login
    setState(() => _loading = false);
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('UPM Member Login'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.school, size: 60, color: Colors.red.shade700),
              SizedBox(height: 16),
              Text(
                'UPM Email Login',
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
                  labelText: 'UPM Email',
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
                      child: Text('Login'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
