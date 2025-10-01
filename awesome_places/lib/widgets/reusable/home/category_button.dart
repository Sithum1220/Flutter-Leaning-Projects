import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final Function() onTap;
  final Color btnBgColor;
  final double btnWidth;
  final String btnText;

  const CategoryButton({
    super.key,
    required this.btnBgColor,
    required this.btnWidth,
    required this.btnText, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: btnWidth,
        height: 120,
        decoration: BoxDecoration(
          color: btnBgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            btnText,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
