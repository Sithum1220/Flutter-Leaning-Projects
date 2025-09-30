import 'package:flutter/material.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xffF2E4CE),
        border: Border.all(color: Color(0xffFF9900), width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Get 100% off on Groceries Plus T&C Apply",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffFF9900),
                fontWeight: FontWeight.w400,
              ),
            ),

            Text(
              "Sped payments with master and visa",
              style: TextStyle(
                fontSize: 12,
                color: Color(0xff3B3636).withValues(alpha: 0.47),
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
