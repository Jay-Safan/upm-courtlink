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
    await Future.delayed(Duration(seconds: 1)); // dummy
    setState(() => _loading = false);
    // TODO: replace with real auth
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('UPM User Login')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _emailCtrl,
              decoration: InputDecoration(labelText: 'UPM Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passCtrl,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 32),
            _loading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _login,
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(double.infinity, 48),
                    ),
                    child: Text('Login'),
                  ),
          ],
        ),
      ),
    );
  }
}
