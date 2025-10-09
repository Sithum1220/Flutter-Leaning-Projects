import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class ExerciseCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final Function() onTap;
  
  const ExerciseCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.description, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: 190,
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
              const SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(
                  color: kMainColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
