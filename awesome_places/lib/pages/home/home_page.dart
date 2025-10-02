import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/pages/cultural/cultural_page.dart';
import 'package:awesome_places/pages/landmarks/landmarks_page.dart';
import 'package:awesome_places/pages/natural_wonders/natural_wonders_page.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:awesome_places/pages/nightlife/nightlife_page.dart';
import 'package:awesome_places/pages/tour_booking/tour_booking_page.dart';
import 'package:awesome_places/widgets/reusable/home/category_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 20,
                            color: primaryTextColor,
                          ),
                        ),
                        Text(
                          "Places",
                          style: TextStyle(
                            fontSize: 48,
                            color: primaryPurple,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: primaryPurple,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
                AppSpacing.hLg,
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(color: primaryTextColor, fontSize: 15),
                ),
                AppSpacing.hLg,
                Image.asset(
                  "assets/images/sigiriya.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                AppSpacing.hLg,
                Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: primaryPurple,
                  ),
                ),
                AppSpacing.hLg,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryButton(
                      btnBgColor: darkCategoryButtonColor,
                      btnWidth: 175,
                      btnText: "Natural Wonders",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NaturalWondersPage(),
                          ),
                        );
                      },
                    ),
                    CategoryButton(
                      btnBgColor: darkCategoryButtonColor,
                      btnWidth: 175,
                      btnText: "Nightlife",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NightlifePage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                AppSpacing.hMd,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryButton(
                      btnBgColor: lightCategoryButtonColor,
                      btnWidth: 175,
                      btnText: "Landmarks",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandmarksPage(),
                          ),
                        );
                      },
                    ),
                    CategoryButton(
                      btnBgColor: lightCategoryButtonColor,
                      btnWidth: 175,
                      btnText: "Cultural",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CulturalPage(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
                AppSpacing.hMd,
                CategoryButton(
                  btnBgColor: secondaryYellow,
                  btnWidth: double.infinity,
                  btnText: "Book For A Ride Today!",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TourBookPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
