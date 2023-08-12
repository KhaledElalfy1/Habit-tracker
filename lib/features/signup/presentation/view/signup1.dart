import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/core/utilits/custom_button.dart';
import 'package:habit_tracker/core/utilits/custom_text_form_filed.dart';
import 'package:habit_tracker/features/signup/presentation/view/signup2.dart';

class SignUpViewOne extends StatefulWidget {
  const SignUpViewOne({super.key});

  @override
  State<SignUpViewOne> createState() => _SignUpViewOneState();
}

class _SignUpViewOneState extends State<SignUpViewOne> {
  GlobalKey<FormState> fromKey = GlobalKey();
  DateTime _currentDate = DateTime.now();
  late String name, surName;
  void _showPickerDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime(2050),
    ).then((value) => setState(() {
          _currentDate = value!;
        }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(text: 'Create Account'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                children: [
                  Form(
                    key: fromKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'N A M E',
                        ),
                        CustomTextFormFiled(
                          hitText: 'Enter your name',
                          onChanged: (p0) => name = p0,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'SURNAME',
                        ),
                        CustomTextFormFiled(
                          hitText: 'Enter your sur name',
                          onChanged: (p0) => surName = p0,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'BIRTHDATE',
                        ),
                        CustomTextFormFiled(
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                          hitText:
                              '${_currentDate.day} / ${_currentDate.month} / ${_currentDate.year}',
                          onTap: _showPickerDate,
                        ),
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
