import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Easy Flutter App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          leading: const Icon(Icons.menu, color: Colors.white, size: 32),
          actions: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: const Icon(Icons.search, color: Colors.white, size: 32),
            ),
          ],
          backgroundColor: Colors.blueAccent,
        ),
        body: const Center(child: Text("Hello Flutter")),
      ),
    );
  }
}
