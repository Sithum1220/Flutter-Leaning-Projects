import 'package:flutter/material.dart';

class LargeYellowContainer extends StatelessWidget {
  final String title;
  final String description;

  const LargeYellowContainer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffFFE500),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff3B3636).withValues(alpha: 0.84),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
