import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:flutter/material.dart';

class VehicleList extends StatelessWidget {
  final String imageUrl;
  final String vehicle;
  const VehicleList({super.key, required this.imageUrl, required this.vehicle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(20),
          child: Image.asset(imageUrl, width: 130, fit: BoxFit.cover),
        ),
        AppSpacing.hSm,
        Text(
          vehicle,
          style: TextStyle(color: darkCategoryButtonColor, fontSize: 18),
        ),
      ],
    );
  }
}
