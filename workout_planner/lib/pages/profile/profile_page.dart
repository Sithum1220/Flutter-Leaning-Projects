import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
import 'package:workout_planner/models/user_model.dart';
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
                ProgressCard(progressValue: 0.4, total: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
