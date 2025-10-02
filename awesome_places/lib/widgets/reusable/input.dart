import 'package:awesome_places/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hint: Text(
              "Enter A Text",
              style: TextStyle(color: primaryTextColor, fontSize: 16),
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
