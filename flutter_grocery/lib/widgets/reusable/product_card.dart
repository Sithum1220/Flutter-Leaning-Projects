import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final Color largeRecBg;
  final Color smallRecBg;
  final Color titleColor;
  final Color descriptionColor;
  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.largeRecBg,
    required this.smallRecBg,
    required this.titleColor,
    required this.descriptionColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        color: largeRecBg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: titleColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                color: descriptionColor,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                color: smallRecBg,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
