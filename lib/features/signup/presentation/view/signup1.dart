import 'package:firebase_auth/firebase_auth.dart';
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
  GlobalKey<FormState> globalKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surNameController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  DateTime _currentDate = DateTime.now();
  late String email, password;
  @override
  void dispose() {
    _nameController.dispose();
    _surNameController.dispose();
    _dateController.dispose();
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
                          hitText: 'Enter your email',
                          onChanged: (p0) => email = p0,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'SURNAME',
                        ),
                        CustomTextFormFiled(
                          textEditingController: _surNameController,
                          hitText: 'Enter your password',
                          onChanged: (p0) => password = p0,
                        ),
                        const SizedBox(
                          height: 16,
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
                          height: 70,
                        ),
                        CustomButton(
                          text: 'Next',
                          onTap: _navigationAfterValidation,
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

  void _navigationAfterValidation() async {
    if (globalKey.currentState!.validate()) {
      try {
        UserCredential userCredential =
            await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
      } on FirebaseAuthException catch (e) {
        _handelFirebaseErrors(e);
      } catch (e) {
        debugPrint(e.toString());
      }

      _gotoNextPage();
    }
  }

  void _gotoNextPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpViewTwo(),
      ),
    );
  }

  void _handelFirebaseErrors(FirebaseAuthException e) {
    if (e.code == 'weak-password') {
      debugPrint('The password provided is too weak.');
    } else if (e.code == 'email-already-in-use') {
      debugPrint('The account already exists for that email.');
    }
  }
}
