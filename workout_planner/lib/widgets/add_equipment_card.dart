import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';

class AddEquipmentCard extends StatefulWidget {
  final String title;
  final String imageUrl;
  final int workoutMins;
  final int caloriesBurn;
  final String description;
  final bool isAddedEquipment;
  final bool isFavAddedEquipment;
  final void Function() toggleAddEquipment;
  final void Function() toggleFavAddEquipment;
  const AddEquipmentCard({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.workoutMins,
    required this.caloriesBurn,
    required this.description,
    required this.toggleAddEquipment,
    required this.toggleFavAddEquipment, 
    required this.isAddedEquipment, 
    required this.isFavAddedEquipment,
  });

  @override
  State<AddEquipmentCard> createState() => _AddEquipmentCardState();
}

class _AddEquipmentCardState extends State<AddEquipmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: kCardBgColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [BoxShadow(color: Colors.black12, offset: Offset(0, 2))],
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: kMainBlackColor,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(widget.imageUrl, width: 100),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        widget.description,
                        style: TextStyle(
                          color: kSubTitleColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Text(
                        "Time: ${widget.workoutMins.toString()} min and ${widget.caloriesBurn} cal burned",
                        style: TextStyle(
                          color: kMainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(
                        widget.isAddedEquipment ? Icons.remove : Icons.add,
                        size: 30,
                        color: kMainDarkBlueColor,
                        fontWeight: FontWeight.bold,
                      ),
                      onPressed: widget.toggleAddEquipment,
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.withValues(alpha: 0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      icon: Icon(
                        widget.isFavAddedEquipment
                            ? Icons.favorite
                            : Icons.favorite_border,
                        size: 30,
                        color: kMainRedColor,
                      ),
                      onPressed: widget.toggleFavAddEquipment,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
