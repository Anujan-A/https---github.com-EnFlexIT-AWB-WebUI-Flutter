import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/api_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
//Hier funktionen
  late String username, password;
  late TextEditingController _controller;
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _register() async {
    final prefs = await _prefs;
    prefs.setString('name', username);
    prefs.setString('passwort', password);
    print('Erfolgreich registriert!');
  }

  Future<void> _login() async {
    final prefs = await _prefs;
    String? storedUsername = prefs.getString('name');
    String? storedPassword = prefs.getString('passwort');

    if (storedUsername == username) {
      print('Erfolgreich eingeloggt!');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ApiCall()),
      );
    } else {
      print('Falsche E-Mail oder Passwort!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 245, 193),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/icons/AWB_Icon.png',
                height: 200,
                width: 180,
              ), // Image.asset
              TextFormField(
                decoration: const InputDecoration(labelText: 'Username'),
                onChanged: (text) {
                  username = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte ein Username eingeben';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                onChanged: (text) {
                  password = text;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Bitte ein Passwort eingeben';
                  }
                  return null;
                },
              ),
              ElevatedButton(
                child: Text('Login'),
                onPressed: () {
                  _login();
                },
              ),
              ElevatedButton(
                child: Text('Register'),
                onPressed: () {
                  _register();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
