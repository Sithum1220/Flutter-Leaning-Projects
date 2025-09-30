import 'package:flutter/material.dart';

class Layout01 extends StatelessWidget {
  const Layout01({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(color: Colors.greenAccent),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
