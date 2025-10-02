import 'package:awesome_places/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: cardBgColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.star, size: 35, color: secondaryYellow),
          Icon(Icons.star, size: 35, color: secondaryYellow),
          Icon(Icons.star, size: 35, color: secondaryYellow),
          Icon(Icons.star, size: 35, color: secondaryYellow),
          Icon(Icons.star, size: 35, color: primaryTextColor),
        ],
      ),
    );
  }
}
