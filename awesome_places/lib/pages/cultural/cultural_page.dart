import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:awesome_places/widgets/reusable/submit_button.dart';
import 'package:awesome_places/widgets/reusable/input.dart';
import 'package:awesome_places/widgets/shared/rating.dart';
import 'package:flutter/material.dart';

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cultural",
          style: TextStyle(
            color: mainCulturalColor,
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
              Image.asset(
                "assets/images/Cultural.png",
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              AppSpacing.hLg,
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: primaryTextColor, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              AppSpacing.hLg,
              Text(
                "Rate this Place",
                style: TextStyle(
                  color: subCulturalColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.hMd,
              Rating(),
              AppSpacing.hLg,
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: primaryTextColor, fontSize: 15),
                textAlign: TextAlign.center,
              ),
              AppSpacing.hLg,
              Text(
                "Send Feedback",
                style: TextStyle(
                  color: subCulturalColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.hMd,
              Input(placeholder: 'Enter a text'),
              AppSpacing.hLg,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [SubmitButton()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
