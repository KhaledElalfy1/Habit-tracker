import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_tracker/widgets/custom_habit_container.dart';

import '../widgets/custom_login_container.dart';
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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'challenge',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SvgPicture.asset('assets/images/Card.svg'),
                const SizedBox(height: 5),
                const Text(
                  'habits',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 5),
                const HabitContainer(
                  progressText: '💧',
                  coulmnText1: 'Drink the water',
                  coulmnText2: '500/2000 ML',
                  icon: Icons.add,
                  progress: 500 / 2000,
                ),
                const SizedBox(height: 5),
                const HabitContainer(
                    progressText: '🚶‍♂️',
                    coulmnText1: 'Walk',
                    coulmnText2: '0/10000 STEPS',
                    icon: Icons.add,
                    progress: .5),
                const SizedBox(height: 5),
                const HabitContainer(
                    progressText: '🧘‍♀️',
                    coulmnText1: 'Meditate',
                    coulmnText2: '30/30 MIN',
                    icon: Icons.check,
                    color: Colors.green,
                    progress: 1),
                const SizedBox(height: 5),
                const Text(
                  'Track',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'Your progress',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'Everyday you become one step closer to\nyour goal.Don\'t give up!',
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: 345,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.exit_to_app),
                      Text(
                        'Continue with E-mail',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    LoginContainer(
                        imagePath: 'assets/images/Apple.svg', text: 'Apple'),
                    LoginContainer(
                        imagePath: 'assets/images/Google.svg', text: 'Google'),
                    LoginContainer(
                        imagePath: 'assets/images/Facebook.svg',
                        text: 'Facebook'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'By continuing you are agree terms of services & privecy policy',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
