import 'package:flutter/material.dart';

class GuestLoginScreen extends StatefulWidget {
  @override
  _GuestLoginScreenState createState() => _GuestLoginScreenState();
}

class _GuestLoginScreenState extends State<GuestLoginScreen> {
  final _usernameCtrl = TextEditingController();
  bool _loading = false;

  void _login() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 1)); // dummy
    setState(() => _loading = false);
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _register() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 1)); // dummy
    setState(() => _loading = false);
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guest Access')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _usernameCtrl,
              decoration: InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter a display name',
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
                          minimumSize: Size(double.infinity, 48),
                        ),
                        child: Text('Login'),
                      ),
                      SizedBox(height: 16),
                      OutlinedButton(
                        onPressed: _register,
                        style: OutlinedButton.styleFrom(
                          minimumSize: Size(double.infinity, 48),
                          side: BorderSide(color: Colors.green),
                        ),
                        child: Text('Create Account'),
                      ),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
