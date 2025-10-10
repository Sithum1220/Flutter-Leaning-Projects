// ignore_for_file: public_member_api_docs, sort_constructors_first
class ExerciseModel {
  final int id;
  final String exerciseName;
  final String exerciseImageUrl;
  final int noOfMinuites;
  bool isCompleted;

  ExerciseModel({
    required this.id,
    required this.exerciseName,
    required this.exerciseImageUrl,
    required this.noOfMinuites,
    required this.isCompleted,
  });
}
