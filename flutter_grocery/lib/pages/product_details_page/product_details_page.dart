import 'package:flutter/material.dart';
import 'package:flutter_grocery/widgets/reusable/product_details_page/price_card.dart';
import 'package:flutter_grocery/widgets/reusable/product_details_page/title_desc_card.dart';
import 'package:flutter_grocery/widgets/shared/notification_card.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NotificationCard(),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    color: Color(0xffFFF500).withValues(alpha: 0.29),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 200,
                    color: Color(0xff333333).withValues(alpha: 0.75),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TitleDescCard(
                title: 'Product Information',
                desc:
                    'vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.',
              ),
              const SizedBox(height: 20),
              TitleDescCard(
                title: 'Product Information',
                desc:
                    'vegetable,  in the broadest sense, any kind of plant life or plant product, namely “vegetable matter”; in common, narrow usage, the term vegetable usually refers to the fresh edible portions of certain herbaceous plants—roots, stems, leaves, flowers, fruit, or seeds. These plant parts are either eaten fresh or prepared in a number of ways, usually as a savory, rather than sweet, dish.',
              ),
              const SizedBox(height: 20),
              Text(
                "Price List",
                style: TextStyle(
                  color: Color(0xff3B3636),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              PriceCard(item: 'Green peas', number: 1, size: 100),
              Divider(
                height: 1,
                color: Color(0xff000000).withValues(alpha: 0.13),
              ),
              const SizedBox(height: 15),
              PriceCard(item: 'Brussels sprouts', number: 2, size: 100),
              Divider(
                height: 1,
                color: Color(0xff000000).withValues(alpha: 0.13),
              ),
              const SizedBox(height: 15),
              PriceCard(item: 'Broccoli', number: 3, size: 100),
              Divider(
                height: 1,
                color: Color(0xff000000).withValues(alpha: 0.13),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Total",
                    style: TextStyle(
                      color: Color(0xff3B3636),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 80),
                  Text(
                    "230\$",
                    style: TextStyle(
                      color: Color(0xff9E00FF),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
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
