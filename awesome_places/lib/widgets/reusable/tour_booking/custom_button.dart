import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String btnText;
  final IconData btnIcon;
  final Color btnColor;
  const CustomButton({
    super.key,
    required this.btnText,
    required this.btnIcon,
    required this.btnColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        backgroundColor: btnColor,
        side: BorderSide(color: black),
      ),
      child: Row(
        children: [
          Text(
            btnText,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: black,
            ),
          ),
          AppSpacing.wSm,
          Icon(btnIcon, size: 20, fontWeight: FontWeight.w600, color: black),
        ],
      ),
    );
  }
}
