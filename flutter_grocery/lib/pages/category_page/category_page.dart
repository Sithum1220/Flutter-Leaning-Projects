import 'package:flutter/material.dart';
import 'package:flutter_grocery/widgets/reusable/category_card.dart';
import 'package:flutter_grocery/widgets/reusable/vegetable_list.dart';
import 'package:flutter_grocery/widgets/shared/notification_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Category", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              const SizedBox(height: 15),
              Text(
                "All Categories",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    categoryName: 'Vegetables & Fruits',
                    qty: 20,
                    bgColor: Color(0xff0057FF),
                    borderColor: Color(0xff0094FF),
                    circleColor: Color(0xff0E00AC),
                  ),
                  CategoryCard(
                    categoryName: 'Bites & Drinks',
                    qty: 53,
                    bgColor: Color(0xff70FF00),
                    borderColor: Color(0xff00FF29),
                    circleColor: Color(0xff06FFA5),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    categoryName: 'Cooking & Elements',
                    qty: 10,
                    bgColor: Color(0xff00E0FF),
                    borderColor: Color(0xff00F0FF),
                    circleColor: Color(0xff10C0F8),
                  ),
                  CategoryCard(
                    categoryName: 'Chicken & Beef',
                    qty: 2,
                    bgColor: Color(0xffFFF500),
                    borderColor: Color(0xffFFB800),
                    circleColor: Color(0xffFF9900),
                  ),
                ],
              ),

              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    categoryName: 'Vegetables & Fruits',
                    qty: 20,
                    bgColor: Color(0xffFF3D00),
                    borderColor: Color(0xffFFA800),
                    circleColor: Color(0xffE56C6C),
                  ),
                  CategoryCard(
                    categoryName: 'Transport & Vehicles',
                    qty: 20,
                    bgColor: Color(0xffCC00FF),
                    borderColor: Color(0xffCC00FF),
                    circleColor: Color(0xffDB00FF),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Text(
                "Selected Items",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 450,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromARGB(255, 171, 171, 171),
                    width: 7,
                  ),
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
                              Icon(
                                Icons.star,
                                size: 40,
                                color: Color(0xffFFE500),
                              ),
                              Icon(
                                Icons.star,
                                size: 40,
                                color: Color(0xffFFE500),
                              ),
                              Icon(
                                Icons.star,
                                size: 40,
                                color: Color(0xffFFE500),
                              ),
                              Icon(
                                Icons.star,
                                size: 40,
                                color: Color(0xffFFE500),
                              ),
                              Icon(
                                Icons.star,
                                size: 40,
                                color: Color(
                                  0xff3B3636,
                                ).withValues(alpha: 0.75),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
