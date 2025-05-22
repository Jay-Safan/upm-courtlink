import 'package:flutter/material.dart';

class PublicUserLoginScreen extends StatefulWidget {
  @override
  _PublicUserLoginScreenState createState() => _PublicUserLoginScreenState();
}

class _PublicUserLoginScreenState extends State<PublicUserLoginScreen> {
  final _emailCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  bool _loading = false;

  void _login() async {
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 1)); // simulate auth
    setState(() => _loading = false);
    Navigator.pushReplacementNamed(context, '/home');
  }

  void _goToRegister() {
    Navigator.pushNamed(context, '/public_register');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login with Email')),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            TextField(
              controller: _emailCtrl,
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Enter your email address',
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16),
            TextField(
              controller: _passwordCtrl,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
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
                        onPressed: _goToRegister,
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
