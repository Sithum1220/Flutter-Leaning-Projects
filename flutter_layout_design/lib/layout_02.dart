import 'package:flutter/material.dart';

class Layout02 extends StatelessWidget {
  const Layout02({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(color: Colors.greenAccent),
              ),

              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(color: Colors.greenAccent),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 170,
                    height: 350,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                  Container(
                    width: 170,
                    height: 350,
                    decoration: BoxDecoration(color: Colors.yellow),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
