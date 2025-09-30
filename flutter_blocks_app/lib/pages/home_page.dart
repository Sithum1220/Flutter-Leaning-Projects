import 'package:flutter/material.dart';
import 'package:flutter_blocks_app/widgets/large_yellow_container.dart';
import 'package:flutter_blocks_app/widgets/small_container.dart';
import 'package:flutter_blocks_app/widgets/small_icon_container.dart';
import 'package:flutter_blocks_app/widgets/social_media_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff9E00FF),
        leading: const Icon(Icons.menu, size: 30, color: Colors.white),
        title: Text(
          "Flutter Blocks App",
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "User Interfaces with Flutter",
                style: const TextStyle(color: Colors.white, fontSize: 24),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xff06FFA5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree. Each widget in the tree corresponds to a specific UI component, and the arrangement of these widgets defines the layout and appearance of the app. By understanding the widget tree, you can efficiently organize your UI components and create a seamless user experience.",
                    style: TextStyle(color: Color(0xff3B3636), fontSize: 18),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallContainer(
                    title: "open-source",
                    description:
                        "Flutter is an open-source UI (User Interface) software development kit created by Google.",
                    color: Color(0xff9E00FF),
                  ),

                  SmallContainer(
                    title: "Widget Tree",
                    description:
                        "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree",
                    color: Color(0xff9E00FF),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              LargeYellowContainer(
                title: "open-source",
                description:
                    "Flutter is an open-source UI (User Interface) software development kit created by Google.Flutter is an open-source UI (User Interface) software development kit created by Google.",
              ),
              const SizedBox(height: 20),
              LargeYellowContainer(
                title: "Widget Tree",
                description:
                    "In Flutter, the user interface is represented as a tree of widgets, commonly known as the widget treeIn Flutter, the user interface is represented as a tree of widgets, commonly known as the widget tree ",
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmallIconContainer(
                    color: Color(0xff06FFA5),
                    icon: Icons.edit_note,
                    iconColor: Color(0xff333333),
                  ),
                  SmallIconContainer(
                    color: Color(0xff06FFA5),
                    icon: Icons.alarm,
                    iconColor: Color.fromARGB(255, 87, 87, 87),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Divider(color: Color.fromARGB(255, 90, 90, 90)),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Flutter Blocks App",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Flutter is an open-source UI (User Interface) software development kit created by Google. It is used to build natively compiled applications for mobile, web, and desktop from a single codebase. Flutter was first introduced in 2015 and has gained significant popularity among developers due to its fast development cycle, expressive and flexible UI components, and excellent performance.",
                    style: TextStyle(fontSize: 12, color: Color(0xff979797)),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SocialMediaIcon(icon: Icons.facebook),
                  SocialMediaIcon(icon: Icons.abc_rounded),
                  SocialMediaIcon(icon: Icons.access_alarm),
                  SocialMediaIcon(icon: Icons.access_time_outlined),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
