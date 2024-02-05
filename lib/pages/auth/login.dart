import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
              ),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
            ),
            const SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () => _loginPressed(context),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _loginPressed(BuildContext context) async {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      var url = "your_login_url"; // Replace with your actual login URL
      var reqBody = {
        "email": username,
        "password": password,
      };

      try {
        var response = await http.post(
          Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode(reqBody),
        );

        if (response.statusCode == 200) {
          var jsonResponse = jsonDecode(response.body);

          if (jsonResponse["success"]) {
            // Successful login
            showDialog(
              context: context,
              builder: (BuildContext context){
                return AlertDialog(
                  title: const Text('Login Successful'),
                  content: Text('Welcome, $username!'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('OK'),
                    ),
                  ],
                );
              },
            );
          } else {
            // Handle unsuccessful login
            _showErrorDialog(context, 'Login Failed', 'Invalid username or password.');
          }
        } else {
          // Handle non-200 status code
          _showErrorDialog(context, 'Error', 'Failed to connect to the server. Please try again later.');
        }
      } catch (e) {
        // Handle network or other errors
        _showErrorDialog(context, 'Error', 'An unexpected error occurred. Please try again.');
      }
    } else {
      // Handle empty username or password
      _showErrorDialog(context, 'Login Failed', 'Please enter both username and password.');
    }
  }

  void _showErrorDialog(BuildContext context, String title, String content) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}