import 'package:flutter/material.dart';
import 'package:habit_tracker/screens/boarding_screen_1.dart';
import 'package:habit_tracker/screens/boarding_screen_2.dart';
import 'package:habit_tracker/screens/boarding_screen_3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            children: const [
              OnBoardingScreen1(),
              OnBoardingScreen2(),
              OnBoardingScreen3(),
            ],
          ),
          Container(
            alignment: const Alignment(-.9, .45),
            child: SmoothPageIndicator(
              controller: controller,
              count: 3,
              effect: const SwapEffect(),
            ),
          ),
        ],
      ),
    );
  }
}
