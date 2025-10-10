import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';
import 'package:workout_planner/widgets/completion_card.dart';
import 'package:workout_planner/widgets/progress_card.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final DateFormat dateFormatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormatter = DateFormat('dd');
  final UserModel userData = user;

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String formattedDate = dateFormatter.format(now);
    String formattedDay = dayFormatter.format(now);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefualtPadding),
            child: Column(
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
                  userData.fullName,
                  style: const TextStyle(
                    fontSize: 40,
                    color: kMainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Your Progress",
                  style: TextStyle(
                    fontSize: 20,
                    color: kMainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                ProgressCard(
                  progressValue: userData.totalCaloriesBurn(),
                  total: 100,
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: kCardBgColor,
                    boxShadow: [
                      BoxShadow(color: Colors.black12, offset: Offset(0, 2)),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Total Minutes Spend: ${userData.totalMinutesSpend().toString()}",
                          style: TextStyle(
                            color: kMainDarkBlueColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(height: 30),
                        Text(
                          "Total Exercise Completed: ${userData.totalExercieseCompleted}",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          "Total Equipment Handovered: ${userData.totalEquipmentHandOvered}",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Your Exercises",
                  style: TextStyle(
                    fontSize: 20,
                    color: kMainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userData.exerciseList.length,
                    itemBuilder: (BuildContext context, int index) {
                      ExerciseModel exercise = userData.exerciseList[index];
                      return CompletionCard(
                        imageURL: exercise.exerciseImageUrl,
                        taskName: exercise.exerciseName,
                        markAsDone: () {
                          setState(() {
                            userData.markExerciseAsCompleted(exercise.id);
                          });
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Your Equipment",
                  style: TextStyle(
                    fontSize: 20,
                    color: kMainBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: userData.equipmentList.length,
                    itemBuilder: (BuildContext context, int index) {
                      EquipmentModel equipment = userData.equipmentList[index];
                      return CompletionCard(
                        imageURL: equipment.equipmentImageUrl,
                        taskName: equipment.equipmentName,
                        markAsDone: () {
                          setState(() {
                            userData.markAsHandovered(equipment.id);
                          });
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
