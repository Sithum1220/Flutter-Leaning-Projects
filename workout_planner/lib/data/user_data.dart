import 'package:workout_planner/models/equipment_model.dart';
import 'package:workout_planner/models/exercise_model.dart';
import 'package:workout_planner/models/user_model.dart';

UserModel user = UserModel(
  userId: "123456",
  fullName: "John Doe",
  gender: "Male",
  address: "",
  description: "123 Main St, City, Country",
  age: 30,
  exerciseList: [
    ExerciseModel(
      exerciseName: "Push-ups",
      exerciseImageUrl: "assets/images/exercises/cobra.png",
      noOfMinuites: 15,
      id: 0,
      isCompleted: false,
    ),
    ExerciseModel(
      exerciseName: "Squats",
      exerciseImageUrl: "assets/images/exercises/downward-facing.png",
      noOfMinuites: 20,
      id: 1,
      isCompleted: false,
    ),
  ],
  equipmentList: [
    EquipmentModel(
      id: 1,
      equipmentName: "Resistance Bands",
      equipmentDescription: "Elastic bands used for resistance exercises.",
      equipmentImageUrl: "assets/images/equipments/checklist.png",
      noOfMinuites: 20,
      isHandOvered: false,
      noOfCalories: 150,
    ),
    EquipmentModel(
      id: 2,
      equipmentName: "Yoga Mat",
      equipmentDescription: "A mat for practicing yoga and floor exercises.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 60,
      isHandOvered: false,
      noOfCalories: 300,
    ),
  ],
  favExerciseList: [
    ExerciseModel(
      exerciseName: "Plank",
      exerciseImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 30,
      id: 2,
      isCompleted: false,
    ),
  ],
  favEquipmentList: [
    EquipmentModel(
      id: 3,
      equipmentName: "Dumbbells",
      equipmentDescription: "Weights used for strength training.",
      equipmentImageUrl: "assets/images/equipments/dumbbell.png",
      noOfMinuites: 30,
      isHandOvered: false,
      noOfCalories: 200,
    ),
  ],
);
