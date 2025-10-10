import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/equipment_data.dart';
import 'package:workout_planner/data/exercise_data.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';
import 'package:workout_planner/pages/equipment_details/equipment_details_page.dart';
import 'package:workout_planner/pages/exercise_details/exercise_details_page.dart';
import 'package:workout_planner/widgets/exercise_card.dart';
import 'package:workout_planner/widgets/progress_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Date And Time Formatters
  final DateFormat formatter = DateFormat('EEEE , MMMM');
  final DateFormat dayFormat = DateFormat('dd');

  // User Data
  final UserModel userData = user;
  final List<ExerciseModel> exerciseList = ExerciseData().exerciseList;
  final List<EquipmentModel> equipmentList = EquipmentData().equipmentList;

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
                ProgressCard(progressValue: 0.3, total: 100),
                const SizedBox(height: 20),
                Text(
                  "Today’s Activity",
                  style: const TextStyle(
                    color: kMainBlackColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: "Warmup",
                      imageUrl: "assets/images/exercises/cobra.png",
                      description: "See More...",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: 'Warmups',
                              exerciseDescription:
                                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                                  're seeking the tranquility visit offers something for every traveler.',
                              dataList: exerciseList,
                            ),
                          ),
                        );
                      },
                    ),
                    ExerciseCard(
                      title: "Equipment",
                      imageUrl: "assets/images/equipments/dumbbells2.png",
                      description: "See More...",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EquipmentDetailsPage(
                              equipmentTitle: "Equipment",
                              description:
                                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                                  're seeking the tranquility visit offers something for every traveler.',
                              equipmentList: equipmentList,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ExerciseCard(
                      title: "Exercise",
                      imageUrl:
                          "assets/images/exercises/treadmill-machine_men.png",
                      description: "See More...",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Exercise",
                              exerciseDescription:
                                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                                  're seeking the tranquility visit offers something for every traveler.',
                              dataList: exerciseList,
                            ),
                          ),
                        );
                      },
                    ),
                    ExerciseCard(
                      title: "Stretching",
                      imageUrl: "assets/images/exercises/triangle.png",
                      description: "See More...",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ExerciseDetailsPage(
                              exerciseTitle: "Stretching",
                              exerciseDescription:
                                  'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                                  're seeking the tranquility visit offers something for every traveler.',
                              dataList: exerciseList,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
