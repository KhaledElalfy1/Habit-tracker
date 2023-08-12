import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/core/utilits/custom_button.dart';
import 'package:habit_tracker/features/signup/presentation/view/signup3.dart';
import 'package:habit_tracker/features/signup/presentation/view/widgets/habit_container.dart';

class SignUpViewTwo extends StatefulWidget {
  const SignUpViewTwo({super.key});

  @override
  State<SignUpViewTwo> createState() => _SignUpViewTwoState();
}

class _SignUpViewTwoState extends State<SignUpViewTwo> {
  bool isSelectedMale = true;
  bool isSelectedFemale = false;
  late String gender;
  void _changeGender() {
    setState(() {
      isSelectedMale = !isSelectedMale;
      isSelectedFemale = !isSelectedFemale;
      if (isSelectedMale) {
        gender = 'male';
      }
      if (isSelectedFemale) {
        gender = 'female';
      }
      debugPrint(gender);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(text: "Create Account"),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text(
                  'Choose your gender',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: _changeGender,
                      child: GenderContainer(
                        icon: '🤷',
                        iconName: 'Male',
                        isSelected: isSelectedMale,
                      ),
                    ),
                    GestureDetector(
                        onTap: _changeGender,
                        child: GenderContainer(
                          icon: '🤷‍♀️',
                          iconName: 'female',
                          isSelected: isSelectedFemale,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 60,
                ),
                CustomButton(
                  text: 'Next',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SignupViewThree();
                      },
                    ));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
