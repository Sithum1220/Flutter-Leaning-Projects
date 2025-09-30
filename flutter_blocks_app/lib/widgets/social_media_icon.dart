import 'package:flutter/material.dart';

class SocialMediaIcon extends StatelessWidget {
  final IconData icon;
  const SocialMediaIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff06FFA5), width: 4),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Icon(icon, color: Colors.white, size: 30),
    );
  }
}
