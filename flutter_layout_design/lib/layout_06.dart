import 'package:flutter/material.dart';

class Layout06 extends StatelessWidget {
  const Layout06({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff9E00FF)),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  color: Color(0xff06FFA5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 20),
                      child: Text(
                        "Flutter is an open-source",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          color: Color(0xff3B3636),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xffFFE500),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Flutter is an open-source",
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Icon(Icons.bookmark),
                        ],
                      ),
                      Text(
                        "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          color: Color(0xff3B3636),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0xffFFE500),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter is an open-source",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                        style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 15,
                          color: Color(0xff3B3636),
                        ),
                      ),
                    ],
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
