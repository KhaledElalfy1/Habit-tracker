import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:habit_tracker/screens/on_boarding_screen.dart';
import 'package:habit_tracker/widgets/custom_row_with_svg.dart';

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
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return OnBoardingScreen();
          },
        ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Center(
            child: Stack(
          children: [
            const Positioned(
              bottom: 130,
              left: 170,
              child: SvgRow(imagePath: 'assets/images/circle 1.svg'),
            ),
            const Positioned(
              bottom: 90,
              left: 130,
              child: SvgRow(imagePath: 'assets/images/circle 2.svg'),
            ),
            const Positioned(
              bottom: 50,
              left: 90,
              child: SvgRow(imagePath: 'assets/images/circle 3.svg'),
            ),
            const SvgRow(imagePath: 'assets/images/circle 4.svg'),
            Positioned(
              bottom: 120,
              right: 60,
              child: Row(
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
                      fontFamily: 'Assistant',
                    ),
                  ),
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}


