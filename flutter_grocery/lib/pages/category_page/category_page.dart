import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/category_page/widgets/selected_item.dart';
import 'package:flutter_grocery/widgets/reusable/category_page/category_card.dart';
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
              SelectedItem(),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
