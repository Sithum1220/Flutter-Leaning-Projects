import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:awesome_places/widgets/reusable/place_card.dart';
import 'package:flutter/material.dart';

class NaturalWondersPage extends StatelessWidget {
  const NaturalWondersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Natural Wonders",
          style: TextStyle(
            color: mainNaturalWondersColor,
            fontSize: 32,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: primaryTextColor, fontSize: 15),
              ),
              AppSpacing.hLg,
              PlaceCard(
                title: 'Nature Wonders Place-1',
                description:
                    'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                    're seeking the tranquility visit offers something for every traveler.',
                imageUrl: "assets/images/nature_wonders_place01.png",
                isCornerRounded: false,
                titleColor: subNaturalWondersColor,
              ),
              AppSpacing.hLg,
              PlaceCard(
                title: 'Nature Wonders Place-1',
                description:
                    'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                    're seeking the tranquility visit offers something for every traveler.',
                imageUrl: "assets/images/nature_wonders_place02.png",
                isCornerRounded: false,
                titleColor: subNaturalWondersColor,
              ),
              AppSpacing.hLg,
              PlaceCard(
                title: 'Nature Wonders Place-1',
                description:
                    'Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you'
                    're seeking the tranquility visit offers something for every traveler.',
                imageUrl: "assets/images/nature_wonders_place03.png",
                isCornerRounded: false,
                titleColor: subNaturalWondersColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
