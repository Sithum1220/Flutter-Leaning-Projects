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
      home: SafeArea(
        child: Scaffold(
          body: Container(
            height: 200,
            width: 200,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.amberAccent, width: 10),
            ),
            child: const Center(child: Text("Hello Flutter")),
          ),
        ),
      ),
    );
  }
}
