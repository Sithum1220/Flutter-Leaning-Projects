import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:workout_planner/constants/colors.dart';
import 'package:workout_planner/constants/responsive.dart';
import 'package:workout_planner/data/user_data.dart';
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
  final userData = user;

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

              ],
            ),
          ),
        ),
      ),
    );
  }

}
