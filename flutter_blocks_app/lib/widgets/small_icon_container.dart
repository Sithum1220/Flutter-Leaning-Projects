import 'package:flutter/material.dart';

class SmallIconContainer extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color iconColor;
  const SmallIconContainer({
    super.key,
    required this.color,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Icon(
          icon, 
          size: 80,
          color: iconColor,
          ),
      ),
    );
  }
}
