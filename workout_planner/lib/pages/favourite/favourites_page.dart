import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';
import 'package:workout_planner/widgets/fav_data_card.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');
  final UserModel userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = formatter.format(now);
    String formattedDay = dayFormat.format(now);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefualtPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          "Hello, ${userData.fullName}",
                          style: const TextStyle(
                            fontSize: 24,
                            color: kMainBlackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: kDefualtPadding),
                        Text(
                          "Here are all your favorited Exercises",
                          style: const TextStyle(
                            color: kMainColor,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(Icons.favorite, size: 42, color: kMainRedColor),
                  ],
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  itemCount: userData.favExerciseList.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefualtPadding,
                    mainAxisSpacing: kDefualtPadding,
                    childAspectRatio: 4 / 5.2,
                  ),
                  itemBuilder: (context, index) {
                    ExerciseModel exercise = userData.favExerciseList[index];
                    return FavDataCard(
                      title: exercise.exerciseName,
                      imageUrl: exercise.exerciseImageUrl,
                      noOfMinuites: exercise.noOfMinuites,
                      equipmentDescription: null,
                      isEquipment: false,
                    );
                  },
                ),
                const SizedBox(height: 20),
                Text(
                  "Here are all your favorited Equipment",
                  style: const TextStyle(
                    color: kMainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  itemCount: userData.favEquipmentList.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: kDefualtPadding,
                    mainAxisSpacing: kDefualtPadding,
                    childAspectRatio: 4 / 7,
                  ),
                  itemBuilder: (context, index) {
                    EquipmentModel equipment = userData.favEquipmentList[index];
                    return FavDataCard(
                      title: equipment.equipmentName,
                      imageUrl: equipment.equipmentImageUrl,
                      noOfMinuites: equipment.noOfMinuites,
                      equipmentDescription: equipment.equipmentDescription,
                      isEquipment: true,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
