import 'package:flutter/material.dart';

class VegetableList extends StatelessWidget {
  final int number;
  final String description;
  const VegetableList({
    super.key,
    required this.number,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffFFE500),
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Text(
              "$number",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
        ),
        const SizedBox(width: 20),
        SizedBox(
          width: 230,
          child: Text(
            description,
            style: TextStyle(
              color: Color(0xff3B3636).withValues(alpha: 0.75),
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
