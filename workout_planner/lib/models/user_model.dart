import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';

class UserModel {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final String description;
  final int age;
  int totalExercieseCompleted = 0;
  int totalEquipmentHandOvered = 0;

  final List<ExerciseModel> exerciseList;
  final List<EquipmentModel> equipmentList;
  final List<ExerciseModel> favExerciseList;
  final List<EquipmentModel> favEquipmentList;

  UserModel({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.description,
    required this.age,
    required this.exerciseList,
    required this.equipmentList,
    required this.favExerciseList,
    required this.favEquipmentList,
  });
}
