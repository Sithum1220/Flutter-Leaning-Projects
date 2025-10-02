import 'package:awesome_places/core/constants/app_spacing.dart';
import 'package:awesome_places/core/theme/colors.dart';
import 'package:awesome_places/widgets/reusable/input.dart';
import 'package:awesome_places/widgets/reusable/submit_button.dart';
import 'package:awesome_places/widgets/reusable/tour_booking/custom_button.dart';
import 'package:awesome_places/widgets/reusable/tour_booking/vehicle_list.dart';
import 'package:awesome_places/widgets/shared/rating.dart';
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
              AppSpacing.hMd,
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
              AppSpacing.hMd,
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(20),
                    child: Image.asset(
                      "assets/images/Cultural.png",
                      width: double.infinity,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 320,
                    decoration: BoxDecoration(
                      color: black.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selected Place",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: white,
                          ),
                        ),
                        AppSpacing.hMd,
                        Text(
                          "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                          style: TextStyle(color: white, fontSize: 18),
                        ),
                        AppSpacing.hLg,
                        Rating(),
                      ],
                    ),
                  ),
                ],
              ),
              AppSpacing.hLg,
              Text(
                "Fill The Details",
                style: TextStyle(
                  color: primaryPurple,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              AppSpacing.hMd,
              Text(
                "User Name",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primaryTextColor,
                ),
              ),
              AppSpacing.hSm,
              Input(placeholder: 'John...'),
              AppSpacing.hMd,
              Text(
                "Country",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: primaryTextColor,
                ),
              ),
              AppSpacing.hSm,
              Input(placeholder: 'Canada...'),
              AppSpacing.hMd,
              SizedBox(
                height: 110,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Team Size",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: primaryTextColor,
                          ),
                        ),
                        AppSpacing.hMd,
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            color: primaryPurple,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              "3",
                              style: TextStyle(
                                fontSize: 36,
                                fontWeight: FontWeight.w600,
                                color: white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Add or Remove team members",
                          style: TextStyle(
                            color: primaryTextColor,
                            fontSize: 18,
                          ),
                        ),
                        AppSpacing.hSm,
                        Row(
                          children: [
                            CustomButton(
                              btnText: "Add",
                              btnIcon: Icons.add,
                              btnColor: addButtonColor,
                            ),
                            AppSpacing.wSm,
                            CustomButton(
                              btnText: "Remove",
                              btnIcon: Icons.remove,
                              btnColor: removeButtonColor,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AppSpacing.hLg,
              Divider(),
              AppSpacing.hSm,
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(color: primaryTextColor, fontSize: 15),
              ),
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
