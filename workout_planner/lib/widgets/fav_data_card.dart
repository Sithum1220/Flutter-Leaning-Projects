import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class FavDataCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int noOfMinuites;
  final String? equipmentDescription;
  final bool isEquipment;
  const FavDataCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.noOfMinuites,
    required this.equipmentDescription,
    required this.isEquipment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: kCardBgColor,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0, 2))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: kMainBlackColor,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(imageUrl, width: 100, fit: BoxFit.cover),
            const SizedBox(height: 5),
            Text(
              "$noOfMinuites minutes",
              style: TextStyle(
                color: kMainColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Icon(Icons.favorite, size: 40, color: kMainRedColor),
            const SizedBox(height: 10),
            ?isEquipment
                ? Text(
                    equipmentDescription!,
                    style: TextStyle(color: kSubTitleColor, fontSize: 14),
                    textAlign: TextAlign.center,
                  )
                : null,
          ],
        ),
      ),
    );
  }
}
