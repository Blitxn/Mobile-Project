import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khmer Trip',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Khmer Trip'),
        ),
        body: const Center(
          child: Text(
            'Welcome to Khmer Trip!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}