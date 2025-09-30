import 'package:flutter/material.dart';
import 'package:flutter_grocery/widgets/reusable/category_page/vegetable_list.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(255, 171, 171, 171), width: 7),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Vegetables",
              style: TextStyle(
                color: Color(0xff3B3636),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            VegetableList(
              number: 1,
              description:
                  'Vegetables are parts of plants that are consumed by humans...',
            ),
            VegetableList(
              number: 2,
              description:
                  'Vegetables are parts of plants that are consumed by humans...',
            ),
            VegetableList(
              number: 3,
              description:
                  'Vegetables are parts of plants that are consumed by humans...',
            ),
            VegetableList(
              number: 4,
              description:
                  'Vegetables are parts of plants that are consumed by humans...',
            ),

            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xffCACACA),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.star, size: 40, color: Color(0xffFFE500)),
                    Icon(Icons.star, size: 40, color: Color(0xffFFE500)),
                    Icon(Icons.star, size: 40, color: Color(0xffFFE500)),
                    Icon(Icons.star, size: 40, color: Color(0xffFFE500)),
                    Icon(
                      Icons.star,
                      size: 40,
                      color: Color(0xff3B3636).withValues(alpha: 0.75),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
