import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class AddExerciseCard extends StatefulWidget {
  final String title;
  final String imageUrl;
  final double noOfMinutes;
  final void Function() toggleAddExercise;
  final void Function() toggleAddFavorite;
  final bool isAdded;
  final bool isFavAdded;

  const AddExerciseCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.noOfMinutes,
    required this.toggleAddExercise,
    required this.isAdded,
    required this.toggleAddFavorite,
    required this.isFavAdded,
  });

  @override
  State<AddExerciseCard> createState() => _AddExerciseCardState();
}

class _AddExerciseCardState extends State<AddExerciseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.46,
      margin: EdgeInsets.only(right: 10),
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
              widget.title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: kMainBlackColor,
              ),
            ),
            const SizedBox(height: 10),
            Image.asset(widget.imageUrl, width: 100, fit: BoxFit.cover),
            const SizedBox(height: 15),
            Text(
              "${widget.noOfMinutes.toInt().toString()} minutes",
              style: TextStyle(fontSize: 18, color: kSubTitleColor),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Icon(
                      widget.isAdded ? Icons.remove : Icons.add,
                      size: 30,
                      color: kMainDarkBlueColor,
                      fontWeight: FontWeight.bold,
                    ),
                    onPressed: widget.toggleAddExercise,
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: Icon(
                      widget.isFavAdded
                          ? Icons.favorite
                          : Icons.favorite_border,
                      size: 30,
                      color: kMainRedColor,
                    ),
                    onPressed: widget.toggleAddFavorite,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
