import 'package:awesome_places/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: secondaryYellow,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        side: BorderSide(color: black),
      ),
      child: Text(
        "Submit",
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
