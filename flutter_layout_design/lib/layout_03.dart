import 'package:flutter/material.dart';

class Layout03 extends StatelessWidget {
  const Layout03({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.purple),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),

                  Container(
                    width: 170,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 170,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          height: 200,
                          decoration: BoxDecoration(color: Colors.yellow),
                        ),
                        // SizedBox(height: 15),
                        Container(
                          width: 170,
                          height: 130,
                          decoration: BoxDecoration(color: Colors.yellow),
                        ),
                      ],
                    ),

                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 170,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.purple),
                        ),
                        Container(
                          width: 170,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.blue),
                        ),
                        Container(
                          width: 170,
                          height: 100,
                          decoration: BoxDecoration(color: Colors.purple),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
