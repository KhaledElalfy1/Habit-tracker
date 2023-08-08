import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/core/utilits/custom_button.dart';
import 'package:habit_tracker/features/signup/presentation/view/widgets/gender_container.dart';

class SignUpViewTwo extends StatefulWidget {
  const SignUpViewTwo({super.key});

  @override
  State<SignUpViewTwo> createState() => _SignUpViewTwoState();
}

class _SignUpViewTwoState extends State<SignUpViewTwo> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(text: "Create Account"),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Choose your gender',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GenderContainer(gender: '🤷', genderName: 'Male'),
                    GenderContainer(gender: '🤷‍♀️', genderName: 'female'),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                CustomButton(text: 'Next')
              ],
            ),
          )
        ],
      ),
    );
  }
}
