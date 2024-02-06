import 'dart:convert';

import 'package:authentication/models/login_request_model.dart';
import 'package:authentication/models/login_response_model.dart';
import 'package:authentication/services/api_service.dart';
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
  bool isAPICallProcess = false;
  bool hidePassword = true;



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
              obscureText: hidePassword,
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                  icon: Icon(hidePassword ? Icons.visibility_off : Icons.visibility),
                ),
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
      LoginRequestModel model = LoginRequestModel(email: username, password: password);
      APIService.login(model).then((response){
        if(response){
          Navigator.pushNamedAndRemoveUntil(context, "/home", (route) => false);
        }else{
          _showErrorDialog(context, "Invalid username/password", "Please enter valid user name and password");
        }
      });
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