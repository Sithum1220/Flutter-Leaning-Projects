import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final int qty;
  final Color bgColor;
  final Color borderColor;
  final Color circleColor;

  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.qty,
    required this.bgColor,
    required this.borderColor,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 100,
      decoration: BoxDecoration(
        color: bgColor.withValues(alpha: 0.29),
        border: Border.all(color: borderColor, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  child: Text(
                    categoryName,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff3B3636),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Text(
                  "$qty+ more ...",
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff3B3636).withValues(alpha: 0.47),
                  ),
                ),
              ],
            ),

            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: circleColor,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
