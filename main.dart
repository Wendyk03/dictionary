import 'package:flutter/material.dart';
import 'package:app/Dictionary/dictionary_screen.dart'; // Import the dictionary screen
import 'package:app/Chatbot/chatbot_screen.dart'; // Import the chatbot screen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learning',
      home: HomeScreen(), // Set HomeScreen as the initial screen
      routes: {
        '/dictionary': (context) => const DictionaryHomePage(),
        '/chatbot': (context) => ChatbotScreen(),
      },
    );
  }
}

// HomeScreen with navigation options
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('E-Learning'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/dictionary');
              },
              child: const Text('Go to Dictionary'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/chatbot');
              },
              child: const Text('Go to Chatbot'),
            ),
          ],
        ),
      ),
    );
  }
}
