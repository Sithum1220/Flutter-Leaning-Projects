import 'package:flutter/material.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';
import 'package:workout_planner/widgets/add_equipment_card.dart';
import 'package:workout_planner/widgets/add_exercise_card.dart';

class AddNewPage extends StatefulWidget {
  const AddNewPage({super.key});

  @override
  State<AddNewPage> createState() => _AddNewPageState();
}

class _AddNewPageState extends State<AddNewPage> {
  final UserModel userData = user;
  final List<ExerciseModel> exerciseList = ExerciseData().exerciseList;
  final List<EquipmentModel> equipmentList = EquipmentData().equipmentList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefualtPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  "Lets Add Some Workouts and Equipment for today!",
                  style: const TextStyle(
                    color: kMainColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "All Exercises",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kMainBlackColor,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: exerciseList.length,
                    itemBuilder: (context, index) {
                      ExerciseModel exercise = exerciseList[index];
                      return AddExerciseCard(
                        title: exercise.exerciseName,
                        imageUrl: exercise.exerciseImageUrl,
                        noOfMinutes: exercise.noOfMinuites.toDouble(),
                        toggleAddExercise: () {
                          setState(() {
                            if (userData.exerciseList.contains(exercise)) {
                              userData.removeExercise(exercise);
                            } else {
                              userData.addExercise(exercise);
                            }
                          });
                        },
                        isAdded: userData.exerciseList.contains(exercise),
                        toggleAddFavorite: () {
                          setState(() {
                            if (userData.favExerciseList.contains(exercise)) {
                              userData.removeFavExercise(exercise);
                            } else {
                              userData.addFavExercise(exercise);
                            }
                          });
                        },
                        isFavAdded: userData.favExerciseList.contains(exercise),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "All Equipment",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: kMainBlackColor,
                  ),
                ),

                const SizedBox(height: 15),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: equipmentList.length,
                    itemBuilder: (context, index) {
                      EquipmentModel equipment = equipmentList[index];
                      return AddEquipmentCard(
                        title: equipment.equipmentName,
                        imageUrl: equipment.equipmentImageUrl,
                        workoutMins: equipment.noOfMinuites,
                        caloriesBurn: equipment.noOfCalories,
                        description: equipment.equipmentDescription,
                        isAddedEquipment: userData.equipmentList.contains(
                          equipment,
                        ),
                        toggleAddEquipment: () {
                          setState(() {
                            if (userData.equipmentList.contains(equipment)) {
                              userData.removeEquipment(equipment);
                            } else {
                              userData.addEquipment(equipment);
                            }
                          });
                        },
                        isFavAddedEquipment: userData.favEquipmentList.contains(
                          equipment,
                        ),
                        toggleFavAddEquipment: () {
                          setState(() {
                            if (userData.favEquipmentList.contains(equipment)) {
                              userData.removeFavEquipment(equipment);
                            } else {
                              userData.addFavEquipment(equipment);
                            }
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
