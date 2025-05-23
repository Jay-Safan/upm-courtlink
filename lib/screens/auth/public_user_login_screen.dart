import 'package:flutter/material.dart';

class PublicUserLoginScreen extends StatefulWidget {
  @override
  _PublicUserLoginScreenState createState() => _PublicUserLoginScreenState();
}

class _PublicUserLoginScreenState extends State<PublicUserLoginScreen> {
  final _emailCtrl = TextEditingController();
  final _passCtrl = TextEditingController();
  bool _loading = false;

  void _login() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 1)); // Simulate login
    setState(() => _loading = false);
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _goToRegister() {
    Navigator.pushNamed(context, '/public_register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        title: Text('Login with Email', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.red,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.mail_outline, size: 60, color: Colors.red.shade700),
              SizedBox(height: 16),
              Text(
                'Public User Login',
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
                  labelText: 'Email',
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
                  : Column(
                      children: [
                        ElevatedButton(
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
                        SizedBox(height: 16),
                        OutlinedButton(
                          onPressed: _goToRegister,
                          style: OutlinedButton.styleFrom(
                            foregroundColor: Colors.red,
                            side: BorderSide(color: Colors.red),
                            minimumSize: Size(double.infinity, 48),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text('Create Account'),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
