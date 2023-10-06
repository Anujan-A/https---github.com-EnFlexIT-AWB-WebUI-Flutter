import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ApiCall extends StatelessWidget {
  const ApiCall({super.key});

  Future<void> fetchAndStoreSessionId() async {
    final response = await http.get(Uri.parse('https://example.com/endpoint'));

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      String sessionId = jsonResponse[
          'sessionId']; // Angenommen, die Session-ID ist unter dem Schlüssel 'sessionId' verfügbar

      // Speichert die Session ID im Local Storage
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('session_id', sessionId);
    } else {
      throw Exception('Failed to load data from the endpoint');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ApiCall'),
      ),
    );
  }
}
