import 'package:flutter/material.dart';

import 'package:habit_tracker/widgets/custom_chat_popup.dart';
import 'package:habit_tracker/widgets/custom_login_container.dart';

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
            child: Image.asset('assets/images/avatar 3.png'),
          ),
          const Positioned(
            top: 80,
            right: 60,
            child: ChatPopUp(),
          ),
          Positioned(
            top: 200,
            left: 30,
            child: Image.asset('assets/images/avatar 1.png'),
          ),
          const Positioned(
            top: 200,
            left: 85,
            child: ChatPopUp(),
          ),
          Positioned(
            bottom: 400,
            left: 120,
            child: Image.asset('assets/images/avatar 2.png'),
          ),
          const Positioned(
            bottom: 470,
            left: 190,
            child: ChatPopUp(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Create',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'Good habits',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const Text(
                  'change your life by slowly  adding new healthy habits\nand sticking them',
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
                      ]),
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
