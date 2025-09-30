import 'package:flutter/material.dart';

class Layout07 extends StatelessWidget {
  const Layout07({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Color(0xff9E00FF)),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Container(
                  width:  double.infinity,
                  height: 370,
                  decoration: BoxDecoration(
                    color: const Color(0xff06FFA5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child:  Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Flutter is an open-source",
                          style: const TextStyle(
                            fontFamily:  "Inter",
                            fontWeight:  FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                          style: const TextStyle(
                            fontFamily: "Inter",
                            fontSize: 15,
                            color: Color(0xff3B3636),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xff8E8FFA),
                                borderRadius:  BorderRadius.circular(10),
                              ),
                            ),
                            Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                color: const Color(0xff8E8FFA),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  width: double.infinity,
                  height: 600,
                  decoration: BoxDecoration(
                    color: const Color(0xffFFE500),
                    borderRadius:  BorderRadius.circular(10),
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
                            Icon(Icons.shopping_cart),
                          ],
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 15,
                            color: const Color(0xff3B3636),
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: double.infinity,
                          height: 340,
                          decoration: BoxDecoration(
                            color: const Color(0xff9E00FF),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Flutter is an open-source",
                                  style: const TextStyle(
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015.",
                                  style: const TextStyle(
                                    fontFamily: "Inter",
                                    fontSize: 15,
                                    color:  Colors.white,
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff06FFA5),
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff06FFA5),
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: 70,
                                      height: 70,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff06FFA5),
                                        borderRadius: BorderRadius.circular(
                                          100,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
      ),
    );
  }
}
