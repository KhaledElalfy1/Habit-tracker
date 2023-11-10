import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:habit_tracker/core/utilits/custom_row_with_svg.dart';

import '../../../onboarding/presentation/view/on_boarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return const OnBoardingScreens();
          },
        ));
      },
    );
  }

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
         
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/True.svg'),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  'Routiner',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
