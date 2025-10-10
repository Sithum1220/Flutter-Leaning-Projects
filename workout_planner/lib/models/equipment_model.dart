// ignore_for_file: public_member_api_docs, sort_constructors_first
class EquipmentModel {
  final int id;
  final String equipmentName;
  final String equipmentDescription;
  final String equipmentImageUrl;
  final int noOfMinuites;
  final int noOfCalories;
  bool isHandOvered;

  EquipmentModel({
    required this.id,
    required this.equipmentName,
    required this.equipmentDescription,
    required this.equipmentImageUrl,
    required this.noOfMinuites,
    required this.noOfCalories,
    required this.isHandOvered,
  });
}
