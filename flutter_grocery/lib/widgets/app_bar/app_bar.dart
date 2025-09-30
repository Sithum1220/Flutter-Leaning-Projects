import 'package:flutter/material.dart';

Widget appBarLeading = Padding(
  padding: const EdgeInsets.only(left: 10),
  child: Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: const Color(0xff9E00FF),
    ),
    child: const Center(child: Icon(Icons.location_on, color: Colors.white)),
  ),
);

Widget appBarTitle = Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
      "Delivery Address",
      style: TextStyle(
        color: Color(0xff3B3636).withValues(alpha: 0.47),
        fontSize: 16,
      ),
    ),
    Text(
      "92 High Street , London",
      style: TextStyle(
        color: Color(0xff3B3636),
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ],
);

List<Widget>? appBarActions = [
  Container(
    width: 45,
    height: 45,
    decoration: BoxDecoration(color: Color(0xffFF9900), shape: BoxShape.circle),
    child: Icon(Icons.shopping_cart, color: Colors.white),
  ),
];
