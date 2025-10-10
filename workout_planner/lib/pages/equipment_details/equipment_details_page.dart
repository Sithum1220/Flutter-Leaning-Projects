import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/widgets/equipment_card.dart';

class EquipmentDetailsPage extends StatefulWidget {
  final String equipmentTitle;
  final String description;
  final List<EquipmentModel> equipmentList;

  const EquipmentDetailsPage({
    super.key,
    required this.equipmentTitle,
    required this.description,
    required this.equipmentList,
  });

  @override
  State<EquipmentDetailsPage> createState() => _EquipmentDetailsPageState();
}

class _EquipmentDetailsPageState extends State<EquipmentDetailsPage> {
  // Date And Time Formatters
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayFormat.format(now);
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$formattedDate $formattedDay",
              style: const TextStyle(
                fontSize: 15,
                color: kSubTitleColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              widget.equipmentTitle,
              style: const TextStyle(
                fontSize: 24,
                color: kMainBlackColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDefualtPadding),
          child: Column(
            children: [
              Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: kMainBlackColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 20),

              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: kDefualtPadding,
                  childAspectRatio: 4 / 3,
                ),
                itemCount: widget.equipmentList.length,
                itemBuilder: (context, index) {
                  EquipmentModel equipment = widget.equipmentList[index];
                  return EquipmentCard(
                    title: equipment.equipmentName,
                    imageUrl: equipment.equipmentImageUrl,
                    workoutMins: "${equipment.noOfMinuites} mins of workout",
                    caloriesBurn:
                        "${equipment.noOfMinuites} Calories will burn",
                    description: equipment.equipmentDescription,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
