import 'package:flutter/material.dart';

import '../../../../core/utilits/custom_row_with_svg.dart';

class OnBoardingScreen3 extends StatelessWidget {
  const OnBoardingScreen3({super.key});

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
          const OverflowBox(
            alignment: Alignment(0, -.5),
            maxWidth: double.infinity,
            maxHeight: double.infinity,
            child: SvgRow(imagePath: 'assets/images/wave.svg'),
          ),
          Container(
            alignment: const Alignment(-.9, -.6),
            child: Image.asset(
              'assets/images/Avatar 04.png',
              height: 63.02,
            ),
          ),
          Container(
            alignment: const Alignment(-.25, -.2),
            child: Image.asset(
              'assets/images/Avatar 02.png',
              height: 63.02,
            ),
          ),
          Container(
            alignment: const Alignment(.3, -.8),
            child: Image.asset(
              'assets/images/Avatar 03.png',
              height: 63.02,
            ),
          ),
          Container(
            alignment: const Alignment(.7, -.35),
            child: Image.asset(
              'assets/images/Avatar 01.png',
              height: 63.02,
            ),
          ),
          Container(
            alignment: const Alignment(.05, -.5),
            child: Container(
              height: 64,
              width: 139,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BEST STRICK DAY',
                      style: TextStyle(color: Colors.grey, fontSize: 13),
                    ),
                    Text(
                      '22',
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ),
                  ]),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Stay together',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'And strong',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Find friends to discuss common topics.complete\nchallenges together.',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
