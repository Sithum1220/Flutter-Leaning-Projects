import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:awesome_places/widgets/reusable/place_card.dart';
import 'package:flutter/material.dart';

class LandmarksPage extends StatelessWidget {
  const LandmarksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Landmarks",
          style: TextStyle(
            color: mainLandmarksColor,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: primaryTextColor, fontSize: 15),
              ),
              AppSpacing.hLg,
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: PlaceCard(
                    title: "Landmarks Place-1",
                    description:
                        "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                    imageUrl: "assets/images/landmark01.png",
                    isCornerRounded: true,
                    titleColor: subNightlifeColor,
                  ),
                ),
              ),
              AppSpacing.hLg,
              Card(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: PlaceCard(
                    title: "Landmarks Place-2",
                    description:
                        "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                    imageUrl: "assets/images/landmark02.png",
                    isCornerRounded: true,
                    titleColor: subNightlifeColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}