import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:awesome_places/widgets/reusable/tour_book/vehicle_list.dart';
import 'package:flutter/material.dart';

class TourBookPage extends StatelessWidget {
  const TourBookPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lets Book A Tour!",
          style: TextStyle(
            color: primaryPurple,
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
              Text(
                "Select a vehicle",
                style: TextStyle(
                  color: primaryPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.hLg,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    VehicleList(
                      imageUrl: 'assets/images/vehicle01.png',
                      vehicle: 'car',
                    ),
                    AppSpacing.wMd,
                    VehicleList(
                      imageUrl: 'assets/images/vehicle02.png',
                      vehicle: 'Bike',
                    ),
                    AppSpacing.wMd,
                    VehicleList(
                      imageUrl: 'assets/images/vehicle01.png',
                      vehicle: 'car',
                    ),
                    AppSpacing.wMd,
                    VehicleList(
                      imageUrl: 'assets/images/vehicle03.png',
                      vehicle: 'Bus',
                    ),
                  ],
                ),
              ),
              AppSpacing.hLg,
              Text(
                "Select a Place",
                style: TextStyle(
                  color: primaryPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
