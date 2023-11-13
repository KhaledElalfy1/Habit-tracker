import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:habit_tracker/features/onboarding/presentation/view/boarding_screen_1.dart';
import 'package:habit_tracker/features/onboarding/presentation/view/boarding_screen_2.dart';
import 'package:habit_tracker/features/onboarding/presentation/view/boarding_screen_3.dart';
import 'package:habit_tracker/features/signin/presentation/view/continue_with_email_screen.dart';
import 'package:habit_tracker/features/signin/presentation/view_model/sign_in_cubit/sign_in_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'widgets/custom_login_container.dart';

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({super.key});

  @override
  State<OnBoardingScreens> createState() => _OnBoardingScreensState();
}

class _OnBoardingScreensState extends State<OnBoardingScreens> {
  PageController controller = PageController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => SignInCubit(),
                        child: const ContinueWithEmail(),
                      ),
                    ),
                  );
                },
                child: Container(
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
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LoginContainer(
                    onTap: () {
                      debugPrint('apple');
                      debugPrint("${controller.page}");
                    },
                    imagePath: 'assets/images/Apple.svg',
                    text: 'Apple',
                  ),
                  LoginContainer(
                    onTap: () {
                      debugPrint('google');
                    },
                    imagePath: 'assets/images/Google.svg',
                    text: 'Google',
                  ),
                  LoginContainer(
                    onTap: () {
                      debugPrint('facebook');
                    },
                    imagePath: 'assets/images/Facebook.svg',
                    text: 'Facebook',
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'By continuing you are agree terms of services & privacy policy',
                style: TextStyle(
                  color: Color(0xffAFB4FF),
                  fontSize: 13,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
            ],
          )
        ],
      ),
    );
  }
}
