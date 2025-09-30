import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/product_details_page/product_details_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Grocery App",
      home: ProductDetailsPage(),
    );
  }
}
