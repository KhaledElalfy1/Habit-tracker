import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/core/utilits/custom_button.dart';
import 'package:habit_tracker/core/utilits/custom_text_form_filed.dart';
import 'package:habit_tracker/features/signup/presentation/view/sign_up2.dart';

class SignUpViewOne extends StatefulWidget {
  const SignUpViewOne({super.key});

  @override
  State<SignUpViewOne> createState() => _SignUpViewOneState();
}

class _SignUpViewOneState extends State<SignUpViewOne> {
  GlobalKey<FormState> globalKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surNameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  DateTime _currentDate = DateTime.now();

  @override
  void dispose() {
    _nameController.dispose();
    _surNameController.dispose();
    _dateController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String _formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year.toString()}";
  }

  void _showPickerDate() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1960),
      lastDate: DateTime(2050),
    ).then((value) => setState(() {
          if (value != null) {
            _currentDate = value;
            debugPrint("$_currentDate");
            _dateController.text = _formatDate(_currentDate);
          }
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
                    key: globalKey,
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
                          textEditingController: _nameController,
                          hitText: 'Enter your Name',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'SURNAME',
                        ),
                        CustomTextFormFiled(
                          textEditingController: _surNameController,
                          hitText: 'Enter your surName',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'EMAIL',
                        ),
                        CustomTextFormFiled(
                          textEditingController: _emailController,
                          hitText: 'Enter your email',
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'PASSWORD',
                        ),
                        CustomTextFormFiled(
                          textEditingController: _passwordController,
                          hitText: 'Enter your password',
                        ),
                        const Text(
                          'BIRTHDATE',
                        ),
                        CustomTextFormFiled(
                          readOnly: true,
                          textEditingController: _dateController,
                          hitText: 'dd/mm/yyyy',
                          onTap: _showPickerDate,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        CustomButton(
                          text: 'Next',
                          onTap: () {
                            if (globalKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUpViewTwo(
                                    name: _nameController.text,
                                    surname: _surNameController.text,
                                    email: _emailController.text,
                                    password: _passwordController.text,
                                    date: _dateController.text,
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                        const SizedBox(
                          height: 10,
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
