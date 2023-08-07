import 'package:flutter/material.dart';

import 'package:habit_tracker/widgets/custom_chat_popup.dart';


import '../widgets/custom_row_with_svg.dart';

class OnBoardingScreen1 extends StatelessWidget {
  const OnBoardingScreen1({super.key});
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
          Positioned(
            top: 100,
            right: 30,
            child: Image.asset(
              'assets/images/avatar 3.png',
              height: 64,
            ),
          ),
          const Positioned(
            top: 80,
            right: 60,
            child: ChatPopUp(),
          ),
          Positioned(
            top: 200,
            left: 30,
            child: Image.asset(
              'assets/images/avatar 1.png',
              height: 80,
            ),
          ),
          const Positioned(
            top: 200,
            left: 85,
            child: ChatPopUp(),
          ),
          Positioned(
            bottom: 400,
            left: 120,
            child: Image.asset(
              'assets/images/avatar 2.png',
              height: 110,
            ),
          ),
          const Positioned(
            bottom: 470,
            left: 190,
            child: ChatPopUp(),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 170),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Create',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'Good habits',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text(
                  'change your life by slowly  adding new healthy habits\nand sticking them',
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
