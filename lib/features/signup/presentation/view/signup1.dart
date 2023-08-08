import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/core/utilits/custom_button.dart';
import 'package:habit_tracker/core/utilits/custom_text_form_filed.dart';
import 'package:habit_tracker/features/signup/presentation/view/signup2.dart';

class SignUpViewOne extends StatelessWidget {
  const SignUpViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(text: 'Create Account'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'N A M E',
                  ),
                  CustomTextFormFiled(hitText: 'Enter your name'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'SURNAME',
                  ),
                  CustomTextFormFiled(hitText: 'Enter your sur name'),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'BIRTHDATE',
                  ),
                  CustomTextFormFiled(hitText: 'mm/dd/yyyy'),
                  const SizedBox(
                    height: 70,
                  ),
                  CustomButton(
                    text: 'Next',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpViewTwo(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
