import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: width,
              height: 400,
              decoration: BoxDecoration(color: Colors.blue[200]),
              child: Column(
                // ---------crossAxisAlignment-----------

                // crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.stretch,

                // ---------mainAxisAlignment-----------
                mainAxisAlignment: MainAxisAlignment.center,

                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 100, height: 100, color: Colors.amberAccent),
                  SizedBox(height: 10),
                  Container(width: 100, height: 100, color: Colors.amberAccent),
                  SizedBox(height: 10),
                  Container(width: 100, height: 100, color: Colors.amberAccent),
                ],
              ),
            ),
            Container(
              width: width,
              height: 400,
              decoration: BoxDecoration(color: Colors.yellow[200]),
              child: Row(
                // ---------crossAxisAlignment-----------
                // crossAxisAlignment: CrossAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.stretch,

                // ---------mainAxisAlignment-----------
                // mainAxisAlignment: MainAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(width: 100, height: 100, color: Colors.blueAccent),
                  SizedBox(width: 10),
                  Container(width: 100, height: 100, color: Colors.blueAccent),
                  SizedBox(width: 10),
                  Container(width: 100, height: 100, color: Colors.blueAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
