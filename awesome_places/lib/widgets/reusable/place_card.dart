import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:flutter/material.dart';

class PlaceCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  final bool isCornerRounded;
  final Color titleColor;

  const PlaceCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.isCornerRounded,
    required this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: titleColor, 
            fontWeight: FontWeight.bold,
          ),
        ),
        AppSpacing.hSm,
        isCornerRounded
            ? ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.asset(
                  imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              )
            : Image.asset(imageUrl, width: double.infinity, fit: BoxFit.cover),
        AppSpacing.hMd,
        Text(
          description,
          style: TextStyle(fontSize: 15, color: primaryTextColor),
        ),
      ],
    );
  }
}
