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

  void addExercise(ExerciseModel exercise) {
    exerciseList.add(exercise);
  }

  void removeExercise(ExerciseModel exercise) {
    exerciseList.remove(exercise);
  }

  void addFavExercise(ExerciseModel exercise) {
    favExerciseList.add(exercise);
  }

  void removeFavExercise(ExerciseModel exercise) {
    favExerciseList.remove(exercise);
  }

  void addEquipment(EquipmentModel equipment) {
    equipmentList.add(equipment);
  }

  void removeEquipment(EquipmentModel equipment) {
    equipmentList.remove(equipment);
  }

  void addFavEquipment(EquipmentModel equipment) {
    favEquipmentList.add(equipment);
  }

  void removeFavEquipment(EquipmentModel equipment) {
    favEquipmentList.remove(equipment);
  }

  int totalMinutesSpend() {
    int totalMinutesSpend = 0;

    for (var exercise in exerciseList) {
      totalMinutesSpend += exercise.noOfMinuites;
    }
    for (var equipment in equipmentList) {
      totalMinutesSpend += equipment.noOfMinuites;
    }

    return totalMinutesSpend;
  }

  void markExerciseAsCompleted(int exerciseId) {
    final exercise = exerciseList.firstWhere(
      (exercise) => exercise.id == exerciseId,
    );
    exercise.isCompleted = true;

    removeExercise(exercise);
    totalExercieseCompleted++;
  }

  void markAsHandovered(int equipmentId) {
    final equipment = equipmentList.firstWhere(
      (equipment) => equipment.id == equipmentId,
    );
    equipment.isHandOvered = true;
    removeEquipment(equipment);
    totalEquipmentHandOvered++;
  }

  double totalCaloriesBurn() {
    double totalCaloriesBurn = 0;

    for (var equipment in equipmentList) {
      totalCaloriesBurn += equipment.noOfCalories;
    }

    if (totalCaloriesBurn > 0 && totalCaloriesBurn <= 10) {
      totalCaloriesBurn = totalCaloriesBurn / 10;
    }

    if (totalCaloriesBurn > 10 && totalCaloriesBurn <= 100) {
      totalCaloriesBurn = totalCaloriesBurn / 100;
    }

    if (totalCaloriesBurn > 100 && totalCaloriesBurn <= 1000) {
      totalCaloriesBurn = totalCaloriesBurn / 1000;
    }

    return totalCaloriesBurn;
  }
}
