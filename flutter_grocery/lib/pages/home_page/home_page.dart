import 'package:flutter/material.dart';
import 'package:flutter_grocery/pages/home_page/widgets/search_bar.dart';
import 'package:flutter_grocery/widgets/app_bar/app_bar.dart';
import 'package:flutter_grocery/widgets/reusable/product_card.dart';
import 'package:flutter_grocery/widgets/reusable/sale_and_low_cost_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: appBarLeading,
        title: appBarTitle,
        actionsPadding: EdgeInsets.only(right: 10),
        actions: appBarActions,
        shadowColor: Colors.black12,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchBox(),
              SizedBox(height: 10),
              Text(
                "Explore Categories",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of plants that are consumed by humans...",
                    largeRecBg: Color(0xff9E00FF),
                    smallRecBg: Color(0xff06FFA5),
                    descriptionColor: Color(0xffC3C3C3),
                    titleColor: Color(0xffFFFFFF),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    largeRecBg: Color(0xff9E00FF),
                    smallRecBg: Color(0xff06FFA5),
                    descriptionColor: Color(0xffC3C3C3),
                    titleColor: Color(0xffFFFFFF),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ProductCard(
                    title: "Vegetables",
                    description:
                        "Vegetables are parts of plants that are consumed by humans...",
                    largeRecBg: Color(0xffFFE500),
                    smallRecBg: Color(0xffFF9900),
                    descriptionColor: Color(0xff686060),
                    titleColor: Color(0xff3B3636),
                  ),
                  ProductCard(
                    title: "Fish & Meat",
                    description:
                        "Fish is the flesh of an animal used for food, and by that definition...",
                    largeRecBg: Color(0xffFFE500),
                    smallRecBg: Color(0xffFF9900),
                    descriptionColor: Color(0xff686060),
                    titleColor: Color(0xff3B3636),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                "For Sale and Low Cost",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SaleAndLowCostCard(
                    title: 'Washing Liquid',
                    size: '220 ml',
                    price: '230\$',
                  ),

                  SaleAndLowCostCard(
                    title: 'Coffee and Tea',
                    size: '100 g',
                    price: '30\$',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
