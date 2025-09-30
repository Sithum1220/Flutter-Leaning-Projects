import 'package:flutter/material.dart';

class Layout05 extends StatelessWidget {
  const Layout05({super.key});

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
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(color: Colors.greenAccent),
                child: Text(
                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                  style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                ),
              ),
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(color: Colors.yellow),
                padding: EdgeInsets.all(15),
                child: Center(
                  child: Text(
                    "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                    style: TextStyle(fontSize: 20, fontFamily: "Inter"),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
