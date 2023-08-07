import 'package:flutter/material.dart';
import 'package:habit_tracker/widgets/custom_habit_container.dart';

import '../widgets/custom_challenge_container.dart';
import '../widgets/custom_row_with_svg.dart';

class OnBoardingScreen2 extends StatelessWidget {
  const OnBoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff3941FF),
                  Color(0xff7269E3),
                  Color(0xff8350DB),
                  Color(0xff3941FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: const SvgRow(imagePath: 'assets/images/circle 1.svg'),
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: const SvgRow(imagePath: 'assets/images/circle 2.svg'),
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: const SvgRow(imagePath: 'assets/images/circle 3.svg'),
          ),
          Container(
            alignment: const Alignment(0, 0),
            child: const SvgRow(imagePath: 'assets/images/circle 4.svg'),
          ),
          const Padding(
            padding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'challenge',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                ChallengeContainer(),
                SizedBox(height: 5),
                Text(
                  'habits',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 5),
                HabitContainer(
                  progressText: '💧',
                  coulmnText1: 'Drink the water',
                  coulmnText2: '500/2000 ML',
                  icon: Icons.add,
                  progress: 500 / 2000,
                ),
                SizedBox(height: 5),
                HabitContainer(
                    progressText: '🚶‍♂️',
                    coulmnText1: 'Walk',
                    coulmnText2: '0/10000 STEPS',
                    icon: Icons.add,
                    progress: .5),
                SizedBox(height: 5),
                HabitContainer(
                    progressText: '🧘‍♀️',
                    coulmnText1: 'Meditate',
                    coulmnText2: '30/30 MIN',
                    icon: Icons.check,
                    color: Colors.green,
                    progress: 1),
                SizedBox(height: 5),
                Text(
                  'Track',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Your progress',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Everyday you become one step closer to\nyour goal.Don\'t give up!',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

